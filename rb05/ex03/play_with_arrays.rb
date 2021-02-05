#!/usr/bin/env ruby

nums = [2, 8, 9, 48, 8, 22, -12, 2]
num2 = Array.new
nums.each do |val|
	if( val > 5)
		num2 << val + 2
	end
end
p nums
p num2.uniq
