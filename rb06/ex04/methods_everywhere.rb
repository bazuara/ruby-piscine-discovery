#!/usr/bin/env ruby

def reduce(string)
  string[0..7]
end

def agranda(string)
  string.ljust(8, 'Z')
end

args = ARGV

unless args.length == 0
  args.each do |w|
    if w.length > 8
      puts reduce(w)
    elsif w.length < 8
      puts agranda(w)
    else
      puts w
    end
  end
else
  puts "none"
end
