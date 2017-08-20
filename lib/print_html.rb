#!/usr/bin/env ruby
require './lib/temperature.rb'

class PrintHtml

	attr_reader :temperature

		def print 
			html = Temperature.new
			"<div>\n" +
			"<div>" + html.celcius.to_s + 			"°C</div>\n" +
			"<div>" + html.to_fahrenheit.to_s + "°F</div>\n" +
			"<div>" +	html.to_kelvin.to_s +			"K</div>\n" +
			"</div>"
		end
end
