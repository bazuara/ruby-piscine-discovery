#!/usr/bin/env ruby

def encontrar_pelirrojos(hash)
	hash.select { |key, value| value == :pelirrojo}.each_key.select {|key, value| key}
end

familia_rebollez = {
	"Rigoberto" => :pelirrojo,
	"Anastasia" => :rubio,
	"Eudovigis" => :moreno,
	"David" => :pelirrojo,
	"Francis" => :pelirrojo
}

print encontrar_pelirrojos(familia_rebollez)
