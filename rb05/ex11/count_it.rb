#!/usr/bin/env ruby

args = ARGV
unless args.length == 0
	puts "Parameters: #{args.length}"
	args.each do |x|
		puts "#{x}: #{x.length}"
	end
else
	puts "none"
end
