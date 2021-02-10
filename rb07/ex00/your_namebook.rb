#!/usr/bin/env ruby

def array_nombres(hash)
  puts hash.value
end

personas = {
  "jean" => "valjean",
  "grace" => "hopper",
  "xavier" => "neil",
    "fifi" => "brindacier"
}
array = []

personas.each do |key, value| 
	array << key.capitalize + ' ' + value.capitalize
end

print array
