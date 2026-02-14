#ifndef _MAIN_H_
#define _MAIN_H_

#include "terasic_os_includes.h"
#include "SPI_Hw.h"


#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <curl/curl.h>
#include <fcntl.h>
#include <string.h>
#include <sys/mman.h>
#include "dl_curl.h"


#define HW_REGS_BASE ( ALT_STM_OFST )
#define HW_REGS_SPAN ( 0x04000000 )
#define HW_REGS_MASK ( HW_REGS_SPAN - 1 )

void Read_writeData();


#endif //_MAIN_H_
