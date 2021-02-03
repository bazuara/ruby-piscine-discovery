#!/usr/bin/env ruby
puts "Introduzca un número"
num = gets.chomp.to_i
table = 0
while table <10
	puts "#{table} x #{num} = #{table * num}"
	table += 1
end
