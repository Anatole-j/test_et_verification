#include "stdio.h"
#include "stdlib.h"
#include "math.h"
#include <assert.h>
#include "pgcd.h"


int main (int argc, char * argv []){
	printf("(II) Starting PGCD program\n");

	//test avec un des deux arguments égale au PGCD
    assert (PGCD(3500,14)==14); printf("test passed \n");
    assert (PGCD(25,250)==25); printf("test passed \n");

    //test pour des valeurs banales
    assert (PGCD(10,5)==5); printf("test passed \n");
    assert (PGCD(3650,24)==2); printf("test passed \n");    
    assert (PGCD(95,36)==1); printf("test passed \n");
    assert (PGCD(88,72)==8); printf("test passed \n");
    assert (PGCD(700,77)==7); printf("test passed \n");

    //test aux limites
    assert (PGCD(65535,1)==1); printf("test passed \n");
    assert (PGCD(1,65535)==1); printf("test passed \n");

    //test pour 0
    assert (PGCD(0,65)==65); printf("test passed \n");
    assert (PGCD(72,0)==72); printf("test passed \n");


	printf("(II) End of PGCD program\n");
  return 0;
}