#!/usr/bin/env ruby

def media(hash)
	num = hash.select {|name, score| score}.values
	div = num.length
	num.inject(0){|sum,x| sum + x }/div.to_f

end

class_3B = {
	"marine" => 18,
	"jean" => 15,
	"coline" => 8,
	"luc" => 9
}
class_3C = {
	"quentin" => 17,
	"julie" => 15,
	"marc" => 8,
	"stephanie" => 13
}
puts "Media de los 3B: #{media(class_3B)}."
puts "Media de los 3C: #{media(class_3C)}."
