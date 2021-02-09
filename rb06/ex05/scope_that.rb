#!/usr/bin/env ruby

def add_one(i)
  i + 1
end

num = 1
puts num
add_one(num)
puts num
num = add_one(num)
puts num
