#include <stdio.h>

int main(int argc, const char *argv[]){
	int indice;
	int valor = argc;
	int vector[valor];
	for (indice = 0;  indice < valor; indice++) {
		vector[indice] = indice;
		printf("%d\n", vector[indice]);
		
	}	 
	
	return 0;
}
