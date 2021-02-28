#include "stdio.h"
#include "stdlib.h"
#include "math.h"
#include <assert.h>
#include "pgcd.h"
#include <stdio.h>
#include <stdlib.h>


int main (int argc, char * argv []){
	printf("(II) Starting PGCD program\n");

	FILE* fichier_A = fopen("src/ref_A.txt", "r");
	FILE* fichier_B = fopen("src/ref_B.txt", "r");
	FILE* fichier_C = fopen("src/res_C.txt", "w");
	int A = 0;
	int B = 0;

	while ((feof(fichier_A) == 0) && (feof(fichier_B) == 0)){
		fscanf(fichier_A, "%d", &A);
		fscanf(fichier_B, "%d", &B);

		int resultat = PGCD(A, B);
		
		fprintf(fichier_C, "%d\n", resultat);
	}

	fclose(fichier_A);
	fclose(fichier_B);
	fclose(fichier_C);
	system("diff -b -s src/ref_C.txt src/res_C.txt");
	printf("(II) End of PGCD program\n");
  return 0;
}