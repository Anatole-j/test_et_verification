#include "stdio.h"
#include "stdlib.h"
#include "math.h"

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

	int resultat = PGCD(atoi(argv[1]), atoi(argv[2]));
	printf("%d\n", resultat);

	printf("(II) End of PGCD program\n");
  return 0;
}

