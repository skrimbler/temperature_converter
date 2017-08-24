require "./lib/temperature.rb"

class PrintHtml

	attr_reader :temperature

		def print
			htmltemerature = Temperature.new
			puts "<div>"
			puts "	<div>" + htmltemerature.celsius.to_s + " °C</div>"
			puts "	<div>" + htmltemerature.to_fahrenheit.to_s + " °F</div>"
			puts "	<div>" + htmltemerature.to_kelvin.to_s + " K</div>"
			puts "</div>"
		end
end
