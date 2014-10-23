#!/usr/bin/env ruby
# Tutorial jak posługiwać się funkcjami w jezyku Ruby

# By zdefiniowac funkcje nalezy napisać
=begin

	def <nazwa funkcji>
	<cialo funkcji>
	end

=end

#przyklad funkcji:

def hello

	puts "Hello world!"

end

#funkcje wywolujemy piszac

hello

#funkcje moga rowniez zwracac wartosci
#ostatnie wyrazenie zwraca dana wartosc

def getTwo

	2
end

#mozemy przypisac wartosc zwracana przez funkcje do zmiennej

a = getTwo

#dla funkcji mozna rowniez definiowac parametry wejsciowe
#taka funkcja moze je wykorzystac do wykonywania z ich uzyciem odpowiednich operacji

def increaseByTwo(a) #=> zwroci nam dwukrotnosc wartosci przypisanej do zmiennej a

	a = a * 2

end

#by ja wywolac piszemy:

increaseByTwo(3) #=> funkcja zwroci nam wartosc 6

#w funkcji mozemy rowniez definiowac wlasne zmienne, beda one jednak widoczne jedynie wewnatrz danej funkcji

def increaseByThree(a)

	b = 3

	a = a + b

end

increaseByThree(3) #=> funkcja zwroci nam wartosc 5

#aby funkcja przyjmowala wicej argumentow nalezy zmienne oddzielic przecinkiem:

def sum(a, b)

	sum = a + b #=> zwroci nam sume zmiennych a i b

end

#wywolanie funkcji odbywa sie na tej samej zasadzie

a = 3
b = 5

sum(a, b) #=> zwroci nam liczbe 8

#zauwazmy, ze przekazane argumenty nie zmieniaja swojej wartosci po wywolaniu funkcji
#by funkcja zmieniala wartosci musimy uzyc zmiennej globalnej:

@a = 3 #=> definicja zmiennej i przypisanie wartosci '3'

def newValue #=> definicja zmiennej bez parametrow wejsciowych i przypisanie wartosci '4'

	@a = 4

end

newValue #=> wywolanie funkcji

puts @a #=> wypisanie liczby '4'

#jesli przekazemy do funkcji obiekty, zmiany dokonane na obiektach w funkcji beda rowniez dokonane poza nia

#w jezyku Ruby tablica jest obiektem i dlatego zmiany dokonane na niej w funkcji sa ustalone niezleznie od tego w ktorym bloku programu tablica sie znajduje

#Przyklad:

def setArr(arr) #=> pierwsza funkcja przypisuje wartosc indeksu plus jeden dla kazdego elementu tablicy

	(0..arr.length-1).each do |i|

		arr[i] = i + 1

	end

end

def printArr(arr) #=> druga funkcja wypisuje w kolumnie jej elementy

	arr.each do |element|

		puts element

	end

end

arr = Array.new(4) #=> definicja tablicy danych o rozmiarze '4'

setArr(arr) #=> wywolanie funkcji przypisujacej wartosci
printArr(arr) #=> wywolanie funkcji wypisujacej wartosci, sa one takie same jak w funkcji przypisujacej

#dane funkcje mozna rowniez zagniezdzac w innych funkcjach

def multi(a, b) #=> funkcja wykonujaca mnozenie

	c = a * b

end

def pow(a, b) #=> funkcja wykonywujaca potegowanie z uzyciem funkcji mnozocej

	result = 1

	while b > 0 do

		result = multi(result, a) #=> wywolanie funkcji mnozacej
	
		b = b - 1

	end

	result

end

pow(2,3)  #=> funkcja zwroci nam liczbe 8

#uzywajac instrukcji 'return' mozemy ustalic w jakim momencie funkcja ma zwrocic dana wartosc
#uzycie 'return' w funkcji

def max(a, b) #=> funkcja zwroci wartosc ktora jest wieksza

	if a > b

		return a

	else

		return b

	end

end

max(7, 5) #=> funkcja zwroci wartosc 7

#mozemy rowniez uzyc return bez podawania wartosci by przerwac dzialanie funkcji

def div(a, b) #=> funkcja wykonujaca dzielenie

	if b == 0

		puts "Nie dzielimy przez 0!"
		return

	else

		puts "Wynik: #{a/b}"

	end

	puts "Dzialanie wykonane prawidlowo" #=> ta informacja nie pojawi sie w przypadku dzielenia przez 0

end

div(8,2)
div(7,0)

#funkcje mozemy rowniez wywolac sama w sobie. Taka operacje nazywamy rekurencja lub rekursja

def factorial(a) #=> funkcja rekurencyjna liczaca silnie

	if a == 0

		return 1

	else

		return a * factorial(a-1) #=> rekurencyjne wywolanie funkcji

	end

end

factorial(5) #=> funkcja zwroci liczbe 120


