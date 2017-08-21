require './lib/temperature.rb'

class PrintText

	attr_reader :temperature

		def print_text
			ttemperature = Temperature.new
			puts "gegevens:	" + ttemperature.celcius.to_s + " °C"
			puts ttemperature.celcius.to_s + " °C = " + ttemperature.to_fahrenheit.to_s + "	°F"
			puts ttemperature.celcius.to_s + " °C = " + ttemperature.to_kelvin.to_s + "	°F"

			# tmp = Convert.new
			# cel = tmp.to_celcius
			# far = tmp.to_fahrenheit
			# kel = tmp.to_kelvin
			# puts "Temperature:"
			# puts "	#{cel} °C"
			# puts "	#{far} °F"
			# puts "	#{kel} K"
		end
end
