#!/usr/bin/env ruby
password = "ruby mola"
try = gets.chomp
if try == password
	puts "ACCESO PERMITIDO"
else
	puts "ACCESO DENEGADO"
end
