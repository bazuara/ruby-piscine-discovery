#!/usr/bin/env ruby

def downcase_it(string)
  string.downcase
end

args = ARGV
unless args.length == 0
  args.each do |x|
    puts downcase_it(x)
  end
else
  puts "none"
end
