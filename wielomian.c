#include <stdio.h>
#include <stdlib.h>

void wczytajWielomian(int tab[], int stopien) {
	
	int i = 0;
	
	for(i = stopien; i >= 0; i--){
		
		if(i == 0) {
			
			printf("Wyraz wolny = ");
			
		} else if (i == 1) {
			
			printf("x * ");
			
		} else {
			
			printf("x^%i * ", i);
			
		}
		
		scanf("%i", &tab[i]);
		
	}
}

void wypiszWielomian(int tab[], int stopien) {
	
	int i = 0;
	
	for(i = stopien; i >= 0; i--) {
		
		if(tab[i] != 0) {
		
			if(i == 0) {
				
				printf("%i", tab[i]);
			
			} else if (i == 1) {
				
				if(tab[i] != 1 && tab[i] != -1) {
					
					printf("%i", tab[i]);
					
				} else if (tab[i] == -1) {
					
					printf("-");
					
				}
				
				printf("x");
			
			} else {
			
				if(tab[i] != 1 && tab[i] != -1) {
					
					printf("%i", tab[i]);
					
				} else if (tab[i] == -1) {
					
					printf("-");
					
				}
			
				printf("x^%i",  i);
			
			}
		
		}
		
		if(tab[i-1] > 0 && i > 0) {
			
			printf("+");
			
		}
		
		
	}
	
	
}

int* mnozenieWielomianow(int w1[], int stopien1, int w2[], int stopien2) {
	
	int stopienMax = stopien1 + stopien2;
	int* wynik = (int*)malloc(sizeof(int) * stopienMax + 1);
	int i = 0, j = 0;
	
	for(i = stopienMax; i >= 0; i--) {
		
		wynik[i] = 0;
		
	}
	
	for(i = stopien1; i >= 0; i--) {
		
		for(j = stopien2; j >=0; j--) {
			
			wynik[i+j] = wynik[i+j] + w1[i] * w2[j];
			
		}
		
	}
	
	return wynik;
}

int main() {
	
	printf("Podaj stopien pierwszego wielomianiu: ");
	
	int n1 = 0;
	scanf("%i", &n1);
	
	printf("Podaj stopien drugiego wielomianiu: ");
	
	int n2 = 0;
	scanf("%i", &n2);

	int w1[n1+1], w2[n2+1];
	
	printf("\nPodaj wartosci pierwszego wielomianu.\n");
	
	wczytajWielomian(w1, n1);
	
	printf("\n\nPodaj wartosci drugiego wielomianu.\n");
	
	wczytajWielomian(w2, n2);
	
	int *wynik = mnozenieWielomianow(w1, n1, w2, n2);
	
	printf("\n\nWynik mnozenia:\n");
	
	printf("(");
	wypiszWielomian(w1, n1);
	printf(") * ");
	
	printf("(");
	wypiszWielomian(w2, n2);
	
	printf(") = ");
	
	wypiszWielomian(wynik, n1 + n2);
	
	printf("\n");
	
	return 0;
}
