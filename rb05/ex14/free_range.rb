#!/usr/bin/env ruby

args = ARGV
unless args.length == 0
	a=*(args[0].to_i..args[1].to_i)
	p a
else
	puts "none"
end
