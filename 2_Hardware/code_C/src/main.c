#include "stdio.h"
#include "stdlib.h"
#include "math.h"
#include "assert.h"


#define NBR_TEST 65535

int main (int argc, char * argv []){

	int A = 0;
	int B = 0;
	int PGCD = 0;
	
	FILE* file_A = fopen("src/valeurs_A.txt","r");
	assert(file_A != NULL);
	FILE* file_B = fopen("src/valeurs_B.txt","r");
	assert(file_B != NULL);
	FILE* file_C = fopen("src/valeurs_C.txt","r");
	assert(file_C != NULL);

	FILE* tb_Top_level_PGCD = fopen("tb_Top_level_PGCD.txt","w");
	assert(tb_Top_level_PGCD != NULL);
	

	//while (feof(file_A)==0){
	for (int n = 0; n<100; n++){
		fscanf(file_A,"%d",&A);
		fscanf(file_B,"%d",&B);
		fscanf(file_C,"%d",&PGCD);

		fprintf(tb_Top_level_PGCD,"			idata_a  <= STD_LOGIC_VECTOR( TO_UNSIGNED(%d, 32) );\n",A);
		fprintf(tb_Top_level_PGCD,"			idata_b  <= STD_LOGIC_VECTOR( TO_UNSIGNED(%d, 32) );\n",B);
		fprintf(tb_Top_level_PGCD,"			idata_en <= '1';\n");
		fprintf(tb_Top_level_PGCD,"			wait for 20 ns;\n");
		fprintf(tb_Top_level_PGCD,"			while odata_en = '0' loop\n");
		fprintf(tb_Top_level_PGCD,"				idata_en <= '0';\n");
		fprintf(tb_Top_level_PGCD,"				wait for 10 ns;\n");
		fprintf(tb_Top_level_PGCD,"			end loop;\n");
		fprintf(tb_Top_level_PGCD,"			ASSERT UNSIGNED(odata) = TO_UNSIGNED( %d, 32)\n",PGCD);
		fprintf(tb_Top_level_PGCD,"				SEVERITY FAILURE;\n");
		fprintf(tb_Top_level_PGCD,"\n");
	}

	fclose (file_A);
	fclose (file_B);
	fclose (file_C);
	fclose (tb_Top_level_PGCD);

  return 0;
}