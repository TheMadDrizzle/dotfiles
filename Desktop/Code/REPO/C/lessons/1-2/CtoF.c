// C=(5/9)(F-32)
// F=C(9/5)+32

#include <stdio.h>
int main()
{
	char choice;
	int temp, result;

	printf("A. Celcius to Farenheit?\nB. Farenheit to Celcius?\n");
	printf(": ");
	scanf("%s", &choice);	

	printf("Please input a temperature to compute: ");
	scanf("%d", &temp);	

	if(choice == 'A'){
		result = (1.8 * temp) + 32;
		int step1 = (1.8 * temp);
	        printf("1.8 * temp = %d\n", step1);
		printf("Celcius (%d) entered\nFarenheit equivelent is %d\n", temp, result);
	}
	else if(choice == 'B'){
		result = 5 * (temp-32) / 9;
		printf("Farenheit (%d) entered\nCelcius equivelent is %d\n", temp, result);
	}
	else
		printf("You have entered an incorrect temperature, please try again\n");

	return 0;
}
