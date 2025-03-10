#include "convertitore.h"

float res_x_y = 1.0 / (1 << 15); 
float res_z = 360.0 / (1 << 20);

void Conversione_dati_ingresso (char *buffer, uint16_t buffer_len, str_data_in * data ){

    int a_capo = 0;
    int virgola = 0;
    float x_in,y_in,z_in; 
    
    // vettori di char dei 3 ingressi
    char x[10];
    char y[10];
    char z[10];

    // lunghezze dei vettori di char sopra dichiarati
    int k_x = 0;
    int k_y = 0;
    int k_z = 0;
    // esempio di query. Estraggo i dati usando \n e le virgole come punti di riconoscimento

    // created_at,entry_id,field1,field2,field3,field4,field5 \n 2024-02-07 18:18:25 UTC,6,0.2,0.3,45,,  
    for (int i=0; i < buffer_len; i++) {
        
        if (buffer[i] == '\n' ){
            a_capo++;
        }
        if (buffer[i] == ',' && a_capo == 1) {
            virgola++;

        } else {
            if (virgola == 2) {
                
                x[k_x] = buffer[i];
                k_x++;       
            }
            if (virgola == 3) {
                
                y[k_y] = buffer[i];
                k_y++;       
            }
            if (virgola == 4) {
                
                z[k_z] = buffer[i];
                k_z++;       
            }       
        }
        if(virgola > 4) {
            //aggiungo i terminatori di stringa e converto in float
            x[k_x]= '\0';               
            y[k_y]= '\0';
            z[k_z]= '\0';

            x_in =strtof(x, NULL);
            y_in =strtof(y, NULL);
            z_in =strtof(z, NULL);
            break;
        }

    }

    data->x_f = x_in;
    data->y_f = y_in;
    data->z_f = z_in;
    
    // converto i float nel formato per il cordic
    
    bool segno_z = false;

    uint32_t z_scal=0;


    if (z_in < 0) {
        segno_z = true;
        z_scal= (uint32_t)(fabs(z_in)/res_z);
        
    } else {
        z_scal= (uint32_t)(z_in/res_z);
    }

    //codifico l'angolo in complemento a 2 in un intero da 32 ma con il bit di segno sul 20imo bit
    if (segno_z) {
        z_scal = (z_scal ^ 0x000FFFFF) + 1;
    }


    //divido z in 2 interi da 16bit ed inserisco i dati nella struct di uscita

    data->z =   (uint16_t) (z_scal >>4);
    data->z_l = (uint16_t) z_scal;
    data->z_h = (uint16_t) (z_scal >>16);

    data->x = (int16_t)(x_in/res_x_y);
    data->y = (int16_t)(y_in/res_x_y);

}


float Conversione_x_y_uscita (int16_t data){

    return (float) data*res_x_y;
}

// a scopo di debug,
float Conversione_z_uscita (int16_t z){

    return (float) z*res_z;
}
