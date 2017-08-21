require 'json'
require "./lib/temperature.rb"

class PrintJson

	attr_reader :temperature

		def print
			jtemperature = Temperature.new

			puts "{\"Celsius:  #{jtemperature.celsius.to_s}\"; \"Fahrenheit: #{jtemperature.to_fahrenheit.to_s}\"; \"Kelvin: #{jtemperature.to_kelvin.to_s}\"}"

			# tmp = Convert.new
			# cel = tmp.to_celsius
			# far = tmp.to_fahrenheit
			# kel = tmp.to_kelvin
			# puts "{Celsius: #{cel}, fahrenheit: #{far}, kelvin: #{kel}}"
		end
end
