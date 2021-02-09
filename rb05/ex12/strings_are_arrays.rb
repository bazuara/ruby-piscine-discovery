#!/usr/bin/env ruby

args = ARGV
if args.length == 1
	s = args[0].downcase.scan(/z/).join
	if s.length > 0
		puts s
	else
		puts "none"
	end
else
	puts "none"
end
