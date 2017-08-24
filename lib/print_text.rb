require "./lib/temperature.rb"

class PrintText

	attr_reader :temperature

		def print
			texttemerature = Temperature.new
			puts "Temperature:	"
			puts texttemerature.celsius.to_s + " °C"
			puts texttemerature.to_fahrenheit.to_s + " °F"
			puts texttemerature.to_kelvin.to_s + " K"
		end
end
