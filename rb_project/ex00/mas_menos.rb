#!/usr/bin/env ruby
num = 42 #rand(100)
diff = 3
while (diff > 0)
	puts "Introduzca un número :"
	guess = gets.chomp.to_i
	if num == guess
		puts "Lo ha encontrado!"
		exit(0)
	elsif guess <= 100 && guess >= 0
		if guess > num
			print "- "
		else
			print "+ "
		end
		diff -= 1
		unless diff == 0
			puts "Número de intentos pendientes : #{diff + 1}"
		end
	else
		puts "Ese número no está comprendido entre 0 y 100"
	end
end
puts "Ha perdido! El número era #{num}"
