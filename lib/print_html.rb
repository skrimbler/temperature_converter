require './lib/temperature.rb'

class PrintHtml

	attr_reader :temperature

		def print
			htemperature = Temperature.new
			puts "<div>"
			puts "	<div>" + htemperature.celcius.to_s + " °C </div>"
			puts "	<div>" + htemperature.to_fahrenheit.to_s + " °F </div>"
			puts "	<div>" + htemperature.to_kelvin.to_s + " K </div>"
			puts "</div>"

			# tmp = Convert.new
			# cel = tmp.to_celcius
			# far = tmp.to_fahrenheit
			# kel = tmp.to_kelvin
			#
			# puts "<div>"
			# puts "	<div> #{cel} °C </div>"
			# puts "	<div> #{far} °F </div>"
			# puts "	<div> #{kel} K </div>"
			# puts "</div>"

		end
end
