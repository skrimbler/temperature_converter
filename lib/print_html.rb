require './lib/temperature.rb'

class PrintHtml

	attr_reader :temperature

		def print_html
			tmp = Convert.new
			cel = tmp.to_celcius
			far = tmp.to_fahrenheit
			kel = tmp.to_kelvin

			puts "<div>"
			puts "	<div> #{cel} °C </div>"
			puts "	<div> #{far} °F </div>"
			puts "	<div> #{kel} K </div>"
			puts "</div>"

		end
end
