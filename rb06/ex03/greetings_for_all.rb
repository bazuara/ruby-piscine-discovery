#!/usr/bin/env ruby

def greetings(string = "noble desconocida")
  if (string.is_a? String) == false
    puts "Error! no es un nombre!"
  else
    puts "Hola, #{string}"
  end
end

greetings("Lucia")
greetings()
greetings(22)
