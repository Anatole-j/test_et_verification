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


int test_PGCD (int A, int B, int PGCD){
	if (A%PGCD == 0){
		if (B%PGCD == 0){
			return 1;
		}
		else return 0;
	}
	else return 0;
}

int PGCD_methode2(int A, int B){
	int reste = 1;
	if (A==0){
		return B;
	}
	else if (B==0){
		return A;
	}
	else {
		while (reste !=0){
			int resultat = A-B;
			if (resultat > 0){
				A=resultat;
			}
			else if (resultat<0){
				B=resultat*-1;
			}
			else if (resultat == 0){
				return A;
			}
		}
	}
	return 0;
}

int main (int argc, char * argv []){
	printf("(II) Starting PGCD program\n");

	for (int i=0; i<65536; i++){
		int A = rand() %65534 + 1;
		int B = rand() %65535 + 1;
		assert(A<=65535);
		assert(B<=65535);
		int resultat = PGCD(A, B);
		int resultat2 = PGCD_methode2(A,B);
		assert(resultat<=65535);
		assert(resultat>0);
		assert(resultat2<=65535);
		assert(resultat2>0);
		int test = test_PGCD(A, B, resultat);
		assert(test==1);
	}

	printf("(II) End of PGCD program\n");
  return 0;
}

