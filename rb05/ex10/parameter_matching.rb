#!/usr/bin/env ruby

args = ARGV
if args.length == 1
	puts "Cual era el parámetro?"
	s = STDIN.gets.chomp
	if args[0] == s
		puts "Si señor!"
	else
		puts "No, se siente..."
	end
else
	puts "none"
end
