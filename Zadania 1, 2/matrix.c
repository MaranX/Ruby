//Marcin Mackiewicz 215505
#include<stdio.h>

void wczytaj_macierz(int x, int y, int matrix[][y]) {
	
	int i = 0, j = 0;
	
	for (j = 0; j < y; j++) {
		
		for (i = 0; i < x; i++) {
			
			scanf("%i", &matrix[i][j]);
			
		}
		
	}
	
	
}

void wypisz_macierz(int x, int y, int matrix[][y]) {
	
	int i = 0, j = 0;
	
	for (j = 0; j < y; j++) {
		
		for (i = 0; i < x; i++) {
			
			printf("%i ", matrix[i][j]);
			
		}
		
		printf("\n");
		
	}
	
	
}

void wymnoz_macierz(int x, int y, int z, int a[][y], int b[][x], int c[][y]) {
	
	int i = 0, j = 0, k = 0;
	
	for (k = 0; k < z; k++) {
		
		for (j = 0; j < y; j++) {
			
			c[k][j] = 0;
			
			for (i = 0; i < x; i++) {
				
				c[k][j] = c[k][j] + a[i][j] * b[k][i];
			
			}	
			
		}
		
	}
	
}

int main() {
	
	printf("\nPodaj szerokosc pierwszej i wysokosc drugiej macierzy: ");
	
	int x = 0;
	
	scanf("%i", &x);
	
	printf("\nPodaj wysokosc pierwszej macierzy: ");
	
	int y = 0;
	
	scanf("%i", &y);
	
	printf("\nWczytaj pierwsza macierz:\n");
	
	int matrix1[x][y];
	
	wczytaj_macierz(x, y, matrix1);
	
	printf("\nTwoja pierwsza macierz:\n");
	
	wypisz_macierz(x, y, matrix1);
	
	printf("\nPodaj szerokosc drugiej macierzy: ");
	
	int z = 0;
	
	scanf("%i", &z);
	
	printf("\nWczytaj druga macierz:\n");
	
	int matrix2[z][x];
	
	wczytaj_macierz(z, x, matrix2);
	
	printf("\nTwoja druga macierz:\n");
	
	wypisz_macierz(z, x, matrix2);
	
	int wynik[z][y];
	
	wymnoz_macierz(x, y, z, matrix1, matrix2, wynik);
	
	printf("\nTwoja wymnozona macierz:\n");
	
	wypisz_macierz(z, y, wynik);
	
	return 0;
}
