#!/usr/bin/env ruby
puts "Introduzca el primer número:"
num_1 = gets.chomp.to_i
puts "Introduzca el segundo número:"
num_2 = gets.chomp.to_i
res = num_1 * num_2
if res > 0
	puts "El resultado es positivo"
	puts "#{num_1} X #{num_2} = #{res}"
elsif res < 0
	puts "El resultado es negativo"
	puts "#{num_1} X #{num_2} = #{res}"
else
	puts "El resultado es positivo y negativo"
	puts "#{num_1} X #{num_2} = #{res}"
end
