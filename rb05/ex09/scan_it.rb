#!/usr/bin/env ruby

words = ARGV
if words.length == 2
	puts words[1].scan(words[0]).count
else
	puts "none"
end
