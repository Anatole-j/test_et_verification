#include "stdio.h"
#include "stdlib.h"
#include "math.h"
#include <assert.h>

int PGCD(int A, int B)
{
	if (A==0){
		return B;
	}
	else if (B==0){
		return A;
	}
	else {
		while (A != B){
			if (A>B){
				A = A-B;
			}
			else B = B - A; 
		}
		return A;
	}
}


int main (int argc, char * argv []){
	printf("(II) Starting PGCD program\n");

	for (int i=0; i<20000; i++){
		int A = rand() %65534 + 1;
		int B = rand() %65535 + 1;
		assert(A<=65535);
		assert(B<=65535);
		int resultat = PGCD(A, B);
		printf("i=%d Le PGCD de A=%d et B=%d est %d\n", i, A, B, resultat);
	}

	printf("(II) End of PGCD program\n");
  return 0;
}

