#!/usr/bin/env ruby
puts "Introduzca un número :"
num = gets.chomp.to_f
if (num % 1 != 0)
  puts "El número introducido es decimal"
else
  puts "El número introducido es entero"
end
