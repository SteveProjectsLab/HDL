// ============================================================================
// Copyright (c) 2013 by Terasic Technologies Inc.
// ============================================================================
//

//
// ============================================================================




#include "terasic_os_includes.h"

#define USE_SPI_DRIVER
//#define TXONLY

#ifdef USE_SPI_DRIVER
	#include <sys/ioctl.h>
  	#include <linux/spi/spidev.h>
	static int spi_file = 0;
	struct spi_ioc_transfer spi_xfer;

	uint8_t    mode=1, lsb, bits=16;
	uint32_t speed=250000, max_speed;


	uint8_t spi_writeread8(int file, uint8_t Data);
	uint16_t spi_writeread16(int file, uint16_t Data);
#endif

static void *spi_virtual_base=NULL;


// internal fucniton
void PIO_DC_Set(bool bIsData);
bool SPIM_IsTxFifoEmpty(void);


/////////////////////////////////////////////
/////	LCD Fucntion //////////////////////////
/////////////////////////////////////////////


#define HW_REGS_BASE ( ALT_STM_OFST )
#define HW_REGS_SPAN ( 0x04000000 )
#define HW_REGS_MASK ( HW_REGS_SPAN - 1 )

#define HPS_LTC_BIT_GPIObit40_GPIOreg1	    	( 0x00000800 )




void SPIHW_Init(void *virtual_base){

	spi_virtual_base = virtual_base;
	

	//
	MY_DEBUG("virtual_base = %xh\r\n", (uint32_t)virtual_base);
	
	
	////////////////////////////////////////////////////
	////////////////////////////////////////////////////
	////////////////////////////////////////////////////
	// set the direction of the HPS GPIO1 bits attached to LTC connector to output
	alt_setbits_word( ( virtual_base + ( ( uint32_t )( ALT_GPIO1_SWPORTA_DDR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), HPS_LTC_BIT_GPIObit40_GPIOreg1 );
	// set HPS_LTC_GPIO to 0
	alt_clrbits_word( ( virtual_base + ( ( uint32_t )( ALT_GPIO1_SWPORTA_DR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), HPS_LTC_BIT_GPIObit40_GPIOreg1 );
	// set HPS_LTC_GPIO to 1
	//alt_setbits_word( ( virtual_base + ( ( uint32_t )( ALT_GPIO1_SWPORTA_DR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), HPS_LTC_BIT_GPIObit40_GPIOreg1 );
	

	////////////////////////////////////////////////////
	////////////////////////////////////////////////////
	////////////////////////////////////////////////////
	// SPIM1 Init
#ifdef USE_SPI_DRIVER
	char *filename = "/dev/spidev32766.0";
	
	MY_DEBUG("use spi driver = %s\r\n", filename);
	
	spi_file = open(filename,O_RDWR);
    spi_xfer.len = 2; /* Length of  command to write*/
    spi_xfer.cs_change = 0; /* Keep CS activated */
    spi_xfer.delay_usecs = 0; //delay in us
    spi_xfer.speed_hz = speed; //(speed > max_speed)?max_speed: speed;//2500000, //speed
    spi_xfer.bits_per_word = bits;//16, // bits per word default value               

	if (spi_file > 0){
			// Set SPI
			if (ioctl(spi_file, SPI_IOC_WR_MODE, &mode) < 0)
                {
                MY_DEBUG("SPI mode");
                return;
                }
			// Set SPI message length
			if (ioctl(spi_file, SPI_IOC_WR_BITS_PER_WORD, &bits) <0)
                {
                MY_DEBUG("SPI bits_per_word");
                return;
                }
			// Set SPI speed
			if (ioctl(spi_file, SPI_IOC_WR_MAX_SPEED_HZ, &speed) < 0) 
                {
                MY_DEBUG("SPI max_speed_hz");
                return;
                }
				
				// Read configuration
            if (ioctl(spi_file, SPI_IOC_RD_MODE, &mode) < 0)
                {
                MY_DEBUG("SPI rd_mode");
                return;
                }
            if (ioctl(spi_file, SPI_IOC_RD_LSB_FIRST, &lsb) < 0)
                {
                MY_DEBUG("SPI rd_lsb_fist");
                return;
                }		
            if (ioctl(spi_file, SPI_IOC_RD_BITS_PER_WORD, &bits) < 0) 
                {
                MY_DEBUG("SPI bits_per_word");
                return;
                }
            if (ioctl(spi_file, SPI_IOC_RD_MAX_SPEED_HZ, &max_speed) < 0) 
                {
                MY_DEBUG("SPI max_speed_hz");
                return;
                }      
            MY_DEBUG("%s: spi mode %d, %d bits %sper word, %d Hz max\n",filename, mode, bits, lsb ? "(lsb first) " : "", max_speed);   
            	
 	}else{
		MY_DEBUG("failed to open file = %s(spi_file=%d)\r\n", filename, spi_file);
	}

#else	
	
	usleep( 1000000 / 16 );
	
	MY_DEBUG("[SPIM1]enable SPIM1 interface\r\n");
	// initialize the  peripheral to talk to the LCT
	alt_clrbits_word( ( virtual_base + ( ( uint32_t )( ALT_RSTMGR_PERMODRST_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_RSTMGR_PERMODRST_SPIM1_SET_MSK );
	
	//===================
	// step 1: disable SPI
	//         writing 0 to the SSI Enable register (SSIENR).
	//
	
	MY_DEBUG("[SPIM0]SPIM0.spi_en = 0 # disable the SPI master\r\n");
	// [0] = 0, to disalbe SPI
	alt_clrbits_word( ( virtual_base + ( ( uint32_t )( ALT_SPIM1_SPIENR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_SPIENR_SPI_EN_SET_MSK );
	
	//===================
	// step 2: setup 
	//         Write Control Register 0 (CTRLLR0).
	//         Write the Baud Rate Select Register (BAUDR)
	//         Write the Transmit and Receive FIFO Threshold Level registers (TXFTLR and RXFTLR) to set FIFO buffer threshold levels.
	//         Write the IMR register to set up interrupt masks.
	//         Write the Slave Enable Register (SER) register here to enable the target slave for selection......
	

	// Transmit Only: Transfer Mode [9:8], TXONLY = 0x01
	/* Enum                         | Value | Description           
	* :-----------------------------|:------|:-----------------------
	*  ALT_SPIM_CTLR0_TMOD_E_TXRX   | 0x0   | Transmit & and Receive
	*  ALT_SPIM_CTLR0_TMOD_E_TXONLY | 0x1   | Transmit Only         
	*  ALT_SPIM_CTLR0_TMOD_E_RXONLY | 0x2   | Receive Only          
	*  ALT_SPIM_CTLR0_TMOD_E_EERD   | 0x3   | EEPROM Read     
	*/
	#ifdef TXONLY
		MY_DEBUG("[SPIM1]SPIM1_ctrlr0.tmod = 1  # TX only mode\r\n");
		alt_clrbits_word( ( virtual_base + ( ( uint32_t )( ALT_SPIM1_CTLR0_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_CTLR0_TMOD_SET_MSK );
		alt_setbits_word( ( virtual_base + ( ( uint32_t )( ALT_SPIM1_CTLR0_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_CTLR0_TMOD_SET( ALT_SPIM_CTLR0_TMOD_E_TXONLY ) );
	#else
		MY_DEBUG("[SPIM1]SPIM1_ctrlr0.tmod = 0  # TX-RX mode\r\n");
		alt_clrbits_word( ( virtual_base + ( ( uint32_t )( ALT_SPIM1_CTLR0_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_CTLR0_TMOD_SET_MSK );
		alt_setbits_word( ( virtual_base + ( ( uint32_t )( ALT_SPIM1_CTLR0_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_CTLR0_TMOD_SET( ALT_SPIM_CTLR0_TMOD_E_TXRX ) );
	#endif
	
	// Set Frame Size
	/* Set frame sync (8 bits) */
	/*
	MY_DEBUG("[SPIM1]SPIM1_ctrlr0.dfs = 8bit\r\n");
	alt_clrbits_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_CTLR0_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_CTLR0_DFS_SET_MSK );
	alt_setbits_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_CTLR0_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_CTLR0_DFS_SET( 0x7 ) );
	*/
	/* Set frame sync (16 bits) */
		
	MY_DEBUG("[SPIM1]SPIM1_ctrlr0.dfs = 16bit\r\n");
	alt_clrbits_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_CTLR0_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_CTLR0_DFS_SET_MSK );
    alt_setbits_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_CTLR0_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_CTLR0_DFS_SET( 0xf ) );
	
	MY_DEBUG("[SPIM1]SPIM1_ctrlr0.scph = 1  # SPI mode 1\r\n");
	alt_clrbits_word( ( virtual_base + ( ( uint32_t )( ALT_SPIM1_CTLR0_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_CTLR0_SCPH_SET_MSK );
	alt_setbits_word( ( virtual_base + ( ( uint32_t )( ALT_SPIM1_CTLR0_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_CTLR0_SCPH_SET( ALT_SPIM_CTLR0_SCPH_E_STARTBIT ) );
	

	// 200MHz / 1024 = 195.3kHz: [15:0] = 1024
	MY_DEBUG("[SPIM1]SPIM1_baudr.sckdv = 1024  # 200MHz / 1024 = 195kHz\r\n");
	alt_clrbits_word( ( virtual_base + ( ( uint32_t )( ALT_SPIM1_BAUDR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_BAUDR_SCKDV_SET_MSK );
	alt_setbits_word( ( virtual_base + ( ( uint32_t )( ALT_SPIM1_BAUDR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_BAUDR_SCKDV_SET( 1024 ) );



	// ss_n0 = 1, [3:0]
	MY_DEBUG("[SPIM1]SPIM1_ser.ser = 1  #ss_n0 = 1\r\n");
	alt_clrbits_word( ( virtual_base + ( ( uint32_t )( ALT_SPIM1_SER_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_SER_SER_SET_MSK );
	alt_setbits_word( ( virtual_base + ( ( uint32_t )( ALT_SPIM1_SER_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_SER_SER_SET( 1 ) );
	
	
	
	//===================
	// step 3: Enable the SPI master by writing 1 to the SSIENR register.
	// ALT_SPIM0_SPIENR_ADDR
	MY_DEBUG("[SPIM1]spim1_spienr.spi_en = 1  # ensable the SPI master\r\n");
	alt_setbits_word( ( virtual_base + ( ( uint32_t )( ALT_SPIM1_SPIENR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_SPIENR_SPI_EN_SET_MSK );
	
	// step 4: Write data for transmission to the target slave into the transmit FIFO buffer (write DR)
	//alt_setbits_word( ( virtual_base + ( ( uint32_t )( ALT_SPIM0_DR_ADDR ) & ( uint32_t )( ALT_SPIM1_SPIENR_ADDR ) ) ), data16 );
	
#endif
	
	MY_DEBUG("[SPIM1]SPI_Init done\r\n");
	
}




//////////////////////////////////////////////////////////////
// internal function
//////////////////////////////////////////////////////////////

void PIO_DC_Set(bool bIsData){
	// D_C = "H": Data
	// D_C = "L": CMD

	
	if (bIsData) // A0 = "H": Data
		alt_setbits_word( ( spi_virtual_base + ( ( uint32_t )( ALT_GPIO1_SWPORTA_DR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), HPS_LTC_BIT_GPIObit40_GPIOreg1 );
	else
		alt_clrbits_word( ( spi_virtual_base + ( ( uint32_t )( ALT_GPIO1_SWPORTA_DR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), HPS_LTC_BIT_GPIObit40_GPIOreg1 );
}


#ifdef USE_SPI_DRIVER	

//////////
// Write & Read 1 byte
//////////
uint8_t spi_writeread8(int file, uint8_t Data)   {
		int status;
		uint8_t temp;

    spi_xfer.tx_buf = (unsigned long)&Data;
    spi_xfer.rx_buf = (unsigned long)&temp;
    spi_xfer.len = 1; /* Length of  command to write*/
    spi_xfer.bits_per_word = 8;//8 bits per word               
    status = ioctl(file, SPI_IOC_MESSAGE(1), &spi_xfer);
    if (status < 0)
        {
        MY_DEBUG("SPI_IOC_MESSAGE");
        return(0);
        }
	
	return (temp);
    }
  
//////////
// Write & Read 2 bytes
//////////
uint16_t spi_writeread16(int file, uint16_t Data)   {
		int status;
		uint16_t temp;

    spi_xfer.tx_buf = (unsigned long)&Data;
    spi_xfer.rx_buf = (unsigned long)&temp;
   	spi_xfer.len = 2; /* Length of  command to write*/
    status = ioctl(file, SPI_IOC_MESSAGE(1), &spi_xfer);
    if (status < 0)
        {
        MY_DEBUG("SPI_IOC_MESSAGE");
        return(0);
        }
	return (temp);
    }
  
 
#endif

void SPIM_WriteTxData(uint8_t Data){

	#ifdef USE_SPI_DRIVER	
		if (spi_file > 0)
			spi_writeread8(spi_file, Data);
	#else
		while( ALT_SPIM_SR_TFE_GET( alt_read_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_SR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ) ) ) != ALT_SPIM_SR_TFE_E_EMPTY );
		alt_write_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_DR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_DR_DR_SET( Data ) );
		while( ALT_SPIM_SR_TFE_GET( alt_read_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_SR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ) ) ) != ALT_SPIM_SR_TFE_E_EMPTY );
		while( ALT_SPIM_SR_BUSY_GET( alt_read_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_SR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ) ) ) != ALT_SPIM_SR_BUSY_E_INACT );
	#endif	
		MY_DEBUG("[SPIM1]:SPI Write\r\n");
}


uint8_t SPIM_WriteReadTxRxData(uint8_t Data){
uint8_t temp;

#ifdef USE_SPI_DRIVER	
	if (spi_file > 0)
		temp = spi_writeread8(spi_file, Data);
#else
	while( ALT_SPIM_SR_TFE_GET( alt_read_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_SR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ) ) ) != ALT_SPIM_SR_TFE_E_EMPTY );
	alt_write_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_DR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_DR_DR_SET( Data ) );
	while( ALT_SPIM_SR_TFE_GET( alt_read_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_SR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ) ) ) != ALT_SPIM_SR_TFE_E_EMPTY );
	while( ALT_SPIM_SR_BUSY_GET( alt_read_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_SR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ) ) ) != ALT_SPIM_SR_BUSY_E_INACT );
	temp = (uint8_t) ALT_SPIM_DR_DR_GET(alt_read_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_DR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ) ));
#endif	
	MY_DEBUG("[SPIM1]:SPI Write and Read\r\n");
	MY_DEBUG("TX Value: %d, Read Value: %d \r\n", Data, temp); 
	return temp;
}

uint16_t SPIM_WriteReadTxRxData16(uint16_t Data){
uint16_t temp;

#ifdef USE_SPI_DRIVER	
	if (spi_file > 0)
		temp = spi_writeread16(spi_file, Data);
#else
	while( ALT_SPIM_SR_TFE_GET( alt_read_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_SR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ) ) ) != ALT_SPIM_SR_TFE_E_EMPTY );
	alt_write_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_DR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ), ALT_SPIM_DR_DR_SET( Data ) );
	while( ALT_SPIM_SR_TFE_GET( alt_read_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_SR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ) ) ) != ALT_SPIM_SR_TFE_E_EMPTY );
	while( ALT_SPIM_SR_BUSY_GET( alt_read_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_SR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ) ) ) != ALT_SPIM_SR_BUSY_E_INACT );
	temp = (uint16_t) ALT_SPIM_DR_DR_GET(alt_read_word( ( spi_virtual_base + ( ( uint32_t )( ALT_SPIM1_DR_ADDR ) & ( uint32_t )( HW_REGS_MASK ) ) ) ));
#endif	
	MY_DEBUG("[SPIM1]:SPI Write and Read\r\n");
	MY_DEBUG("TX Value: %d, Read Value: %d \r\n", Data, temp); 
	return temp;
}

void SPIHW_Close() {
#ifdef USE_SPI_DRIVER	
	close(spi_file);	
#endif
}