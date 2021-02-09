#!/usr/bin/env ruby

args = ARGV
unless args.length ==0 
	args.each do |n|
		unless n.end_with?("ismo")
			puts n[0...-1] + "ismo"
		end
	end
else
	puts "none"
end
