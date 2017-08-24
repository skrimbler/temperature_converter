require 'json'
require "./lib/temperature.rb"

class PrintJson

	attr_reader :temperature

		def print
			jtemperature = Temperature.new

			puts "{celsius: #{jtemperature.celsius.to_s}, fahrenheit: #{jtemperature.to_fahrenheit.to_s}, kelvin: #{jtemperature.to_kelvin.to_s}}"
		end
end
