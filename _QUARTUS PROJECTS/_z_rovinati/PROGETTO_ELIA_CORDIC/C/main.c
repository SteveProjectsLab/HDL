#include <stdio.h>
#include <stdlib.h>
#include <curl/curl.h>
#include <unistd.h>
#include <string.h>

#include "dl_curl.h"
#include "convertitore.h"
#include "terasic_os_includes.h"
#include "SPI_Hw.h"

void *lib_handle;
CURL *curl;
CURLcode res;

struct MemoryStruct {
  char *memory;
  size_t size;
};

#define HW_REGS_BASE ( ALT_STM_OFST )
#define HW_REGS_SPAN ( 0x04000000 )
#define HW_REGS_MASK ( HW_REGS_SPAN - 1 )

#define START_CODE 0b1010101010101010



void curl_init(void){

    curl = dl_curl_easy_init();

    struct curl_slist *header = NULL;

    /* Modify a header curl otherwise adds differently */
    header = dl_curl_slist_append(header, "Host: api.thingspeak.com");
    header = dl_curl_slist_append(header, "User-Agent: libcurl-agent/1.0");

    /* set our custom set of headers */
    res = dl_curl_easy_setopt(curl, CURLOPT_HTTPHEADER, header);
    if (res != CURLE_OK){
        fprintf(stderr, "header failed: %s\n",
                dl_curl_easy_strerror(res));
    }
    res = dl_curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, 0);

    if (res != CURLE_OK){
        fprintf(stderr, "certificate failed: %s\n",
                dl_curl_easy_strerror(res));
    }
    
}


size_t WriteMemoryCallback(void *contents, size_t size, size_t nmemb, void *userp)
{
    size_t realsize = size * nmemb;
    struct MemoryStruct *mem = (struct MemoryStruct *)userp;
    
    memcpy(&(mem->memory[0]), contents, realsize);
    mem->size = realsize;
    mem->memory[mem->size] = 0;

    return realsize;
}

int main(int argc, char *argv[])
{   
    uint8_t spi_cycle_count = 0;
    str_data_in dati_da_inviare;
    
    float x_out,y_out,z_out;   // dati da inviare in cloud

    //dati letti dal cloud al ciclo precedente
    float x_pre = 0;
    float y_pre = 0;
    float z_pre = 0;

    struct MemoryStruct data_in;
    
    data_in.memory = malloc(150); 
    data_in.size = 0;

    char buffer[300];

    /********************** inizializzazione curl ******************************/

    lib_handle = curl_load();
    if (!lib_handle) {
        fprintf(stderr, "curl_load failed!\r\n");
        return 0;
    }
    curl_init(); 
    /***************************************************************************/

    /********************** inizializzazione SPI  ******************************/
    //for mmap
 	void *virtual_base;
    int fd;

    // map the address space for the registers into user space so we can interact with them.
	// we'll actually map in the entire CSR span of the HPS since we want to access various registers within that span
	if( ( fd = open( "/dev/mem", ( O_RDWR | O_SYNC ) ) ) == -1 ) {
		printf( "ERROR: could not open \"/dev/mem\"...\n" );
		return 1 ;
	}

	virtual_base = mmap( NULL, HW_REGS_SPAN, ( PROT_READ | PROT_WRITE ), MAP_SHARED, fd, HW_REGS_BASE );

	if( virtual_base == MAP_FAILED ) {
		printf( "ERROR: mmap() failed...\n" );
		close( fd );
		return 1 ;
	}

	// Init the HW SPI
	SPIHW_Init(virtual_base);

    /***************************************************************************/

    //
    while(1) {


        /********************** estraggo dati da thingspeak  ************************/    

        dl_curl_easy_setopt(curl, CURLOPT_URL, "https://api.thingspeak.com/channels/2422701/feeds.csv?api_key=F54CC7GB7TV74Y8A&results=1 ");
        dl_curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteMemoryCallback);
        dl_curl_easy_setopt(curl, CURLOPT_WRITEDATA, (void *)&data_in);
        res = dl_curl_easy_perform(curl);

        if(res != CURLE_OK) {
        fprintf(stderr, "curl_easy_perform() failed: %s\n",
                dl_curl_easy_strerror(res));
                return 1; 
        }

        //char test[]= "created_at,entry_id,field1,field2,field3,field4,field5 \n 2024-02-07 18:18:25 UTC,6,0.2,0.3,45,,";
        
        Conversione_dati_ingresso(data_in.memory,data_in.size,&dati_da_inviare); //estraggo i dati dalla risposta e li converto
        /***************************************************************************/

        if(dati_da_inviare.x_f == x_pre && dati_da_inviare.y_f == y_pre && dati_da_inviare.z_f == z_pre) {

            printf("i dati non sono cambiati, elaborazione non necessaria \n");

        } else {

            /********************** invio dati in SPI  *********************************/

            SPIM_WriteReadTxRxData16(START_CODE);  // indica l'inizio della trasmissione
            SPIM_WriteReadTxRxData16(dati_da_inviare.x);
            SPIM_WriteReadTxRxData16(dati_da_inviare.y);
            SPIM_WriteReadTxRxData16(dati_da_inviare.z_l);
            SPIM_WriteReadTxRxData16(dati_da_inviare.z_h);
            /***************************************************************************/

            /********************** lettura dati da SPI ********************************/
            
            do {

                if(SPIM_WriteReadTxRxData16(0) == START_CODE) {
                    break;
                };
                spi_cycle_count++;
            } while (spi_cycle_count < 10);

            spi_cycle_count = 0;
            x_out = Conversione_x_y_uscita(SPIM_WriteReadTxRxData16(0));
            y_out = Conversione_x_y_uscita(SPIM_WriteReadTxRxData16(0));
            z_out = Conversione_z_uscita(SPIM_WriteReadTxRxData16(0));

            /***************************************************************************/


            /********************** invio dati a thingspeak  **************************/
            //devo inviare anche i dati ricevuto altrimenti non legge correttamente al prossimo ciclo

            sprintf(buffer,"https://api.thingspeak.com/update.json?api_key=R4625MR7ONAIBL9C&field1=%f&field2=%f&field3=%f&field4=%f&field5=%f"
                                                                                ,dati_da_inviare.x_f,dati_da_inviare.y_f,dati_da_inviare.z_f, x_out,y_out);
                dl_curl_easy_setopt(curl, CURLOPT_URL, buffer);
                res = dl_curl_easy_perform(curl);
                if (res != CURLE_OK) {
                    fprintf(stderr, "curl_easy_perform() failed: %s\n",
                            dl_curl_easy_strerror(res));
                } else {
                    printf("\r");
                    fflush(stdout);
                }


            /**************************************************************************/

            // salvo i dati letti dal cloud. se al ciclo dopo sono uguali non esegue l'elaborazione 
            x_pre = dati_da_inviare.x_f;
            y_pre = dati_da_inviare.y_f;
            z_pre = dati_da_inviare.z_f;

            printf( " \n x= %f y = %f z = %f \n",x_out,y_out,z_out);
        }
        usleep(30 * 1000 * 1000);
    }

    SPIHW_Close();
    dl_curl_easy_cleanup(curl);
    curl_unload(lib_handle);
    return 0;
}
