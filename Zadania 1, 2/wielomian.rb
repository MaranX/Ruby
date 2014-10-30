#!/usr/bin/env ruby
# Marcin Mackiewicz 215505

def wczytajWielomian(tab)

	(0..tab.length-1).each do |i|

		if tab.length-1-i == 0

			print "Wyraz wolny = "

		elsif tab.length-1-i == 1

			print "x * "

		else

			print "x^#{tab.length-1-i} * "

		end

		tab[tab.length-1-i] = Integer(gets.chomp)

	end

end

def wypiszWielomian(tab)

	(0..tab.length-1).each do |i|

		if tab[tab.length-1-i] != 0

			if tab.length-1-i == 0

				print "#{tab[tab.length-1-i]}"

			elsif tab.length-1-i == 1

				if tab[tab.length-1-i] != 1 && tab[tab.length-1-i] != -1
				print "#{tab[tab.length-1-i]}"

				elsif tab[tab.length-1-i] == -1

					print "-"

				end

				print "x"

			else

				if tab[tab.length-1-i] != 1 && tab[tab.length-1-i] != -1
				print "#{tab[tab.length-1-i]}"

				elsif tab[tab.length-1-i] == -1

					print "-"

				end

				print "x^#{tab.length-1-i}"

			end

		end

		if tab[tab.length-2-i] > 0 && tab.length-1-i != 0

			print "+"

		end

	end

end

def mnozenieWielomianow(w1, w2)

	stopienMax = (w1.length) + (w2.length)

	wynik = Array.new(stopienMax-2)

	(0..wynik.length).each do |i|

		wynik[i] = 0

	end

	(0..w1.length-1).each do |i|

		(0..w2.length-1).each do |j|
	
			wynik[(w1.length-1-i) + (w2.length-1-j)] = wynik[(w1.length-1-i) + (w2.length-1-j)] + (w1[w1.length-1-i] * w2[w2.length-1-j])

		end

	end

	wynik

end

print "Podaj stopien pierwszego wielomianu: "

n1 = Integer(gets.chomp)

w1 = Array.new(n1+1)

print "Podaj stopien drugiego wielomianu: "

n2 = Integer(gets.chomp)

w2 = Array.new(n2+1)

puts "Podaj wartosci pierwszego wielomianu: "

wczytajWielomian(w1)

puts "Podaj wartosci drugiego wielomianu: "

wczytajWielomian(w2)

puts "Wynik mnozenia:"

wynik = mnozenieWielomianow(w1, w2)

print "("
wypiszWielomian(w1)
print ") * "

print "("
wypiszWielomian(w2)
print ") = "

wypiszWielomian(wynik)

puts ""

