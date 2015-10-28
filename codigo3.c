#include <stdio.h>
#define PI 3.14159

int main(int argc, const char *argv[]){
	float area, radio;
	radio = 10;
	area = PI * ( radio *  radio);
	printf("El area del circulo es: %f\n", area);
	
	return 0;
}
