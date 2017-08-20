#!/usr/bin/env ruby
require './lib/temperature.rb'

class PrintText

	attr_reader :temperature

		def print
			text = Temperature.new
			"Temperature\n" +
				text.celsius.to_s + 			" °C\n" +
				text.to_fahrenheit.to_s + " °F\n" +
				text.to_kelvin.to_s +			" K\n"
		end
end
