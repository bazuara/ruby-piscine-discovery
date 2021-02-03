#!/usr/bin/env ruby
puts "Introduzca un número superior a 25"
num = gets.chomp.to_i
if num > 25
	puts "Error"
else
	while num <= 25
		puts "En el bucle, mi variable es igual o superior a #{num}"
		num += 1;
	end
end
