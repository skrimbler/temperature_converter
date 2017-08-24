require "./lib/temperature.rb"

class PrintText

	attr_reader :temperature

		def print
			ttemperature = Temperature.new
			puts "Temperature:	"
			puts ttemperature.celsius.to_s + " °C"
			puts ttemperature.to_fahrenheit.to_s + " °F"
			puts ttemperature.to_kelvin.to_s + " K"
		end
end
