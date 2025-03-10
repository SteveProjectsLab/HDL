#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <math.h>
#include <stdbool.h>

//struttura per i dati di ingresso. Per i dati da mandare in SPI
typedef struct {
    int16_t x;  // x int 
    int16_t y;  // y int 
    
    int16_t z ;    // 16 bit più significativi 
    int16_t z_l;  // 16 bit dell'angolo z meno significativi  
    int16_t z_h; // restanti 4 bit più significativi

    float x_f; // x float
    float y_f; // y float
    float z_f; // z float

} str_data_in; 


/// @brief funzione che converte la stringa da curl nei dati cordic da mandare in SPI  
/// @param buffer stringa contenente tutti i dati provenienti da curl
/// @param buffer_len lunghezza della stringa
/// @param data_in puntatore alla struttura che conterrà i dati convertiti 
void Conversione_dati_ingresso (char *buffer, uint16_t buffer_len, str_data_in * data );

/// @brief funzione che converte x o y codificati a 16 bit , in float
/// @param data x o y a 16 bit
/// @return dato convertito in float
float Conversione_x_y_uscita (int16_t data);

/// @brief funzione di debug che converte 16 bit meno significativi di z , in float
/// @param z 16 bit MENO significativi di z 
/// @return dato convertito in float
float Conversione_z_uscita (int16_t z);