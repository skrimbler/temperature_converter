require './lib/temperature.rb'

class PrintText

	attr_reader :temperature

		def print_text
			tmp = Convert.new
			cel = tmp.to_celcius
			far = tmp.to_fahrenheit
			kel = tmp.to_kelvin
			puts "Temperature:"
			puts "	#{cel} °C"
			puts "	#{far} °F"
			puts "	#{kel} K"
		end
end
