require 'json'
require './lib/temperature.rb'

class PrintJson

	attr_reader :temperature

		def print_json
			tmp = Convert.new
			cel = tmp.to_celcius
			far = tmp.to_fahrenheit
			kel = tmp.to_kelvin
			puts "{Celsius: #{cel}, fahrenheit: #{far}, kelvin: #{kel}}"
		end
end
