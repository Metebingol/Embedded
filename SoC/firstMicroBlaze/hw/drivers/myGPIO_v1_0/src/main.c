#include <myGPIO.h>
#include <xgpio_i.h>



#define mybase 0x0000000000000000



int main(){




	MYGPIO_mWriteReg(mybase,MYGPIO_S00_AXI_SLV_REG0_OFFSET,0xFF);
 	 return 0;
}