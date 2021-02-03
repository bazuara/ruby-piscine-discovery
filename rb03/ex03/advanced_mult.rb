#!/usr/bin/env ruby
num_1 = 0
while num_1 <= 10
	print "Tabla de #{num_1} :"
	num_2 = 0
	while num_2 <= 10
		print " #{num_1 * num_2}"
		num_2 += 1
	end
	puts
	num_1 += 1
end
