#include <stdio.h>



int main (int argc, char* argv[]){
	int c;
	FILE *file;
	file = fopen("word.txt", "r");

	if (file) {
		while ((c = getc(file)) != EOF)
		putchar(c);
		fclose(file);

	}
	printf("\n");
	return 0;
}