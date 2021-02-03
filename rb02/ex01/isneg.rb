#!/usr/bin/env ruby
num = gets.chomp.to_i
if num == 0
	puts "Este número es igual a cero"
elsif num > 0
	puts "Este número es positivo"
elsif num < 0
	puts "Este número es negativo"
end
