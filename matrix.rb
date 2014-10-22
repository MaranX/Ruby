#!/usr/bin/env ruby


def wczytaj_macierz(matrix, x, y)

	(0..y-1).each { 
		|j|
		(0..x-1).each { 
			|i|
			matrix[i][j] = Integer(gets.chomp)
		}
	}

end

def wypisz_macierz(matrix, x , y)

	(0..y-1).each { 
		|j|
		(0..x-1).each { 
			|i|
			print matrix[i][j]
			print " "
		}

	puts ""
	}

end

def wymnoz_macierz(x, y, z, a, b)
	

	wynik = Array.new(z){ Array.new(y, 0) }

	(0..z-1).each { 
		|k|
		(0..y-1).each { 
			|j|
			(0..x-1).each { 
				|i|
			
				wynik[k][j] = wynik[k][j] + a[i][j] * b[k][i]

			}
		}

	}

	wynik

end

print "Podaj szerokosc pierwszej i wysokosc drugiej macierzy: "

x = Integer(gets.chomp)

print "Podaj wysokosc pierwszej macierzy: "

y = Integer(gets.chomp)

puts "Wczytaj pierwsza macierz: "

matrix1 = Array.new(x){ Array.new(y, 0) }

wczytaj_macierz(matrix1, x, y)

puts "Twoja pierwsza macierz: "

wypisz_macierz(matrix1, x, y)

print "Podaj szerokosc drugiej macierzy: "

z = Integer(gets.chomp)

puts "Wczytaj druga macierz: "

matrix2 = Array.new(z){ Array.new(x, 0) }

wczytaj_macierz(matrix2, z, x)

puts "Twoja druga macierz: "

wypisz_macierz(matrix2, z, x)

wynik = wymnoz_macierz(x, y, z, matrix1, matrix2)

puts "Twoja wymnozona macierz:"

wypisz_macierz(wynik, z, y)

