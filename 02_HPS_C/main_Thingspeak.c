#include "main.h"

// Global variables
CURL *curl; /* cURL object*/

int main(int argc, char *argv[]) {

    int fd;
    CURLcode res;
    void *lib_handle;
    struct curl_slist *header = NULL;
   

    lib_handle = curl_load();
    if (!lib_handle) {
        fprintf(stderr, "curl_load failed!\r\n");
        return 0;
    }

    curl = dl_curl_easy_init();

    /* Modify a header curl otherwise adds differently */
    header = dl_curl_slist_append(header, "Host: api.thingspeak.com");
    header = dl_curl_slist_append(header, "User-Agent: libcurl-agent/1.0");

    /* set our custom set of headers*/
    res = dl_curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, 0L);
    if (res != CURLE_OK) {
        fprintf(stderr, "curl_easy_setopt() failed - set SSL verifypeer: %s\n", dl_curl_easy_strerror(res));
    }
    /*This option determines whether curl verifies the authenticity of the peer's certificate. 
    A value of 1 means curl verifies; 0 (zero) means it does not. */

    // map the address space for the registers into user space so we can interact with them.
    // we'll actually map in the entire CSR span of the HPS since we want to access various registers within that span
    if ((fd = open("/dev/mem", (O_RDWR | O_SYNC))) == -1) {
        printf("ERROR: could not open \"/dev/mem\"...\n");
        return 1;
    }

    void *virtual_base = mmap(NULL, HW_REGS_SPAN, (PROT_READ | PROT_WRITE), MAP_SHARED, fd, HW_REGS_BASE);

    if (virtual_base == MAP_FAILED) {
        printf("ERROR: mmap() failed...\n");
        close(fd);
        return 1;
    }

    // Init the HW SPI
    SPIHW_Init(virtual_base);



    //--------------------------------------------------------------------------------
    // LCD CODE
    //--------------------------------------------------------------------------------

    printf("LCD VISUALIZER\n");
    int16_t received = 0xF22F; //data received from slave on MISO, 16 bit
    char bufferurl [200];   
    int to_send = 0;           //data to send on ThingSpeak
    while(1){ // infinite loop

        received = SPIM_WriteReadTxRxData16(0xF22F); //sending dummy data on MOSI (hex F22F) and read data from MISO and store in "received"
        
        //check if SLAVE has sent back F22F or the BUTTON DATA
        if(received == 0x0000 ||received == 0x0001||received == 0x0002||received == 0x0003||received == 0x0004||received == 0x0005||received == 0x0006||received == 0x0007||received == 0x0008||received == 0x0009) {
            switch(received){//conversion from 16 bit to int, in base of the API %d
                case 0x0000:
                    to_send=0;
                    break;
                case 0x0001:
                    to_send=1;
                    break;
                case 0x0002:
                    to_send=2;
                    break;
                case 0x0003:
                    to_send=3;
                    break;
                case 0x0004:
                    to_send=4;
                    break;
                case 0x0005:
                    to_send=5;
                    break;
                case 0x0006:
                    to_send=6;
                    break;
                case 0x0007:
                    to_send=7;
                    break;
                case 0x0008:
                    to_send=8;
                    break;
                case 0x0009:
                    to_send=9;
                    break;
                
            }
            // url per la scrittura di dati del canale thingspeak
            sprintf(bufferurl, "https://api.thingspeak.com/update?api_key=OP8H82Y91IYI1FYB&field1=%d",to_send); 
            dl_curl_easy_setopt(curl, CURLOPT_URL, bufferurl);
            res = dl_curl_easy_perform(curl);

            // Verifica se la richiesta è stata eseguita con successo
            if (res != CURLE_OK) {
                fprintf(stderr, "curl_easy_perform() failed: %s\n",
                        dl_curl_easy_strerror(res));
            } else {
                printf("\r");
                fflush(stdout);
            }
            to_send=15;// setting a not pressed char to not reenter the loop

            sleep(15);// time interval to refresh ThingSpeak
        }
        sleep(0.1);//time interval between 2 data send of MOSI
    }
     
    dl_curl_easy_cleanup(curl);
    curl_unload(lib_handle);

    SPIHW_Close();

    return 0;

}

// Funzione per gestire i dati ricevuti dalla richiesta HTTP
size_t write_callback(void *ptr, size_t size, size_t nmemb, char *data) {
    // Copia i dati ricevuti in 'data'
    strcpy(data, (char *)ptr);
    return size * nmemb;
}


void Read_writeData() {

    int n_dati = 15; // numero di risposte del filtro che desideriamo osservare
    int16_t temp = 0; int dato = 0;
    CURLcode res;
    char bufferurl [200];

  
/*¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤Scrittura su thingspeak¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤*/
    /* INVIO STIMOLO TRAMITE SPI E CAIRICO LE RISPOSTE DEL FILTRO ALLO STIMOLO SU THINGSPEAK*/
    printf("Inizio trasmissione dello stimolo tramite SPI: \n");

    for (int i = 0; i < n_dati; i++) {
        temp = (int16_t)SPIM_WriteReadTxRxData16( dato ); // Comunicazione con l'SPI, invio "dato" e risposta su "temp"
         
        // url per la scrittura di dati nel field 2 del canale thingspeak
        sprintf(bufferurl, "https://api.thingspeak.com/update?api_key=OP8H82Y91IYI1FYB&field1=%d",(int) temp); 
        dl_curl_easy_setopt(curl, CURLOPT_URL, bufferurl);
        res = dl_curl_easy_perform(curl);

        // Verifica se la richiesta è stata eseguita con successo
        if (res != CURLE_OK) {
            fprintf(stderr, "curl_easy_perform() failed: %s\n",
                    dl_curl_easy_strerror(res));
        } else {
            printf("\r");
            fflush(stdout);
        }
        sleep(15); // thingspeak accetta nuovi dati in sequenza solo con un intervallo di 15 secondi (intervallo valutato sperimentalmente)
    }
    
    printf("Fine trasmissione\n");
/*¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤*/
}





