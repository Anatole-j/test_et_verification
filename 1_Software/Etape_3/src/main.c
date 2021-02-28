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

int PGCD_methode2(int A, int B){
	int reste = 1;
	
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
	return 0;
}

int test_PGCD(int PGCD, int PGCD_methode2){
    if (PGCD_methode2 == PGCD){
        return 1;
    }
    else{
        return 0;       
    }
}



int main (int argc, char * argv []){
	printf("(II) Starting PGCD program\n");

	for (int i=0; i<1; i++){
		int A = rand() %65534 + 1;
		int B = rand() %65535 + 1;
		A = 46396;
		B = 14;
		int resultat = PGCD(A, B);
		int resultat2 = PGCD_methode2(A, B);
		int test = test_PGCD(resultat, resultat2);
		if (test == 0) return 0;
		printf("Le PGCD de A=%d et B=%d est %d\n", A, B, resultat);
		printf("Le PGCD de A=%d et B=%d est %d\n", A, B, resultat2);
	}

	printf("(II) End of PGCD program\n");
  return 0;
}

