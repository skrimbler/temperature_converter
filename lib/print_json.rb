require 'json'
require "./lib/temperature.rb"

class PrintJson

	attr_reader :temperature

		def print
			jsontemerature = Temperature.new

			puts "{celsius: #{jsontemerature.celsius.to_s}, fahrenheit: #{jsontemerature.to_fahrenheit.to_s}, kelvin: #{jsontemerature.to_kelvin.to_s}}"
		end
end
