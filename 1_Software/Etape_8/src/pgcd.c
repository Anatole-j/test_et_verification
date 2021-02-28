#include "stdio.h"
#include "stdlib.h"
#include "math.h"
#include "pgcd.h"

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
	}
	return A;
}

