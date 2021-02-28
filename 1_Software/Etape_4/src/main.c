#include "stdio.h"
#include "stdlib.h"
#include "math.h"
#include <assert.h>

int PGCD(int A, int B)
{
	while (A != B){
		if (A>B){
			A = A-B;
		}
		else B = B - A; 
	}
	return A;
}


int main (int argc, char * argv []){
	printf("(II) Starting PGCD program\n");

	//for (int i=0; i<65536; i++){
		//int A = rand() %65534 + 1;
		//int B = rand() %65535 + 1;
		//int B = 750000;
		int A = atoi(argv[1]);
		int B = atoi(argv[2]);
		assert(A<=65535);
		assert(B<=65535);
		int resultat = PGCD(A, B);
		assert(resultat<=65535);
		assert(resultat>0);
		printf("%d\n", resultat);
	//}

	printf("(II) End of PGCD program\n");
  return 0;
}

