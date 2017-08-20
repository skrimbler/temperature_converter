#!/usr/bin/env ruby
require './lib/temperature.rb'

class PrintJson

	attr_reader :temperature

		def print
			json = Temperature.new
			json_temperature ={ :Celcius => json.celsius.to_s, :Fahrenheit => json.to_fahrenheit.to_s,
				:Kelvin => json.to_kelvin.to_s}
			puts JSON.pretty_generate(json_temperature)
		end
end
