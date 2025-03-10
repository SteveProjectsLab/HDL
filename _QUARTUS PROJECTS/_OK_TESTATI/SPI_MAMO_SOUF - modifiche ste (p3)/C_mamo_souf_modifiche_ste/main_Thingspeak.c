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

    printf("IIR FILTER");

    // Come previsto dalla macchina a stati il primo invio è la sequenza di riconsocimento
    SPIM_WriteReadTxRxData16(0x0F0F);
    
    while(1){
        SPIM_WriteTxData(0xCC);
    }
     
    //Read_writeData(); // funzione che contiene tutta la gestione del trasferimento
    printf("\nmain() reporting that all filter's output were shown\n");

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
    
    
/*¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤Lettura da thingspeak¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤*/
    
    /*LEGGO LO STIMOLO DAL FIELD 1 */
    // Url lettura
    char url[] = "https://api.thingspeak.com/channels/2494838/fields/1/last.txt?api_key=0088RSBXYPCI5POU";
        
        
        // Buffer per contenere i dati ricevuti
        char data[128] = {0};
        
        // Imposta l'URL per la richiesta HTTP GET
        dl_curl_easy_setopt(curl, CURLOPT_URL, url);
        
        // Imposta la funzione di callback per gestire i dati ricevuti
        dl_curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_callback);
        
        // Passa il buffer 'data' alla funzione di callback
        dl_curl_easy_setopt(curl, CURLOPT_WRITEDATA, data);
        
        // Esegui la richiesta HTTP GET
        res = dl_curl_easy_perform(curl);
        
        // Verifica se la richiesta è stata eseguita con successo
        if (res != CURLE_OK) {
            fprintf(stderr, "Errore nella richiesta HTTP: %s\n", dl_curl_easy_strerror(res));
        } else {
            // Stampa i dati ricevuti
            printf("Dati ricevuti: %s\n", data);
            
            // Converte i dati ricevuti in un intero
            dato = atoi(data);
            
            // Abbiamo ottenuto lo stimolo in formato intero 
            printf("Dato in ingresso all'SPI (stimolo filtro): %d\n", dato);
        }
/*¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤*/
  
/*¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤Scrittura su thingspeak¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤*/
    /* INVIO STIMOLO TRAMITE SPI E CAIRICO LE RISPOSTE DEL FILTRO ALLO STIMOLO SU THINGSPEAK*/
    printf("Inizio trasmissione dello stimolo tramite SPI: \n");

    for (int i = 0; i < n_dati; i++) {
        temp = (int16_t)SPIM_WriteReadTxRxData16( dato ); // Comunicazione con l'SPI, invio "dato" e risposta su "temp"
         
        // url per la scrittura di dati nel field 2 del canale thingspeak
        sprintf(bufferurl, "https://api.thingspeak.com/update.json?api_key=DKJTUUZO1J5I7YWV&field2=%d",(int) temp); 
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





