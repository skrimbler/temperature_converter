require 'json'
require "temperature"

class PrintJson

	attr_reader :temperature

		def print
			jtemperature = Temperature.new
			json_temperature = {:Celsius => jtemperature.celcius.to_s, :Fahrenheit => jtemperature.to_fahrenheit.to_s, :Kelvin => jtemperature.to_kelvin.to_s}
			puts JSON.pretty_generate(json_temperature)

			# tmp = Convert.new
			# cel = tmp.to_celcius
			# far = tmp.to_fahrenheit
			# kel = tmp.to_kelvin
			# puts "{Celsius: #{cel}, fahrenheit: #{far}, kelvin: #{kel}}"
		end
end
