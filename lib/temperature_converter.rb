#!/usr/bin/env ruby

require './lib/temperature_converter_commandline.rb'
require './lib/temperature_converter_file.rb'
require './lib/temperature_converter_url.rb'
require './lib/temperature_converter_ttl.rb'

class TemperatureConverter


	attr_reader :temp
	attr_reader :origin_rb

	def initialize
		@temp = 0
	end

#---------------------------------------------------------------------
#start converting by reading

		def self.commandline_temperature temp
			TemperatureConverterCommandline.commandline_temperature temp
		end

    def self.file_temperature path
			TemperatureConverterFile.file_temperature path
		end

    def self.url_temperature url
      TemperatureConverterUrl.url_temperature url
    end

		def self.ttl_temperature origin_rb
			TemperatureConverterTtl.ttl_temperature origin_rb
		end





end
# class TemperatureConverter
#
#   # def initialize temperature
#     # @temperature = temperature
#         # @ is een instantievariabele
#         # @@ globale variabele
#         # weight zelf is een lokale variable als argument van deze scoop en functie
#   # end
#
#   require 'net/http'
#   require 'uri'
#
#   attr_accessor :temperature
#
#   def initialize
#     @temperature =0.0
#   end
#
#   def commandline_temperature converter
#     @temperature = converter.first.to_f
#   end
#
#   def file_temperature converter
#     @temperature = File.open(converter).read.to_f
#   end
#
#   def url_temperature converter
#     @temperature = Net::HTTP.get(URI.parse(converter)).to_f
#   end
#
#   def to_text
#
#     printer = TextPrinter.new @temperature
#     printer.print
#
#     puts "Temperature: "
#     puts (@temperature).to_s + " °C"
#     puts (@temperature * 9/5 +32).to_s + " °F"
#     puts (@temperature +273.15).to_s + " K"
#   end
#
#   def to_json
#
#     printer = JsonPrinter.new @temperature
#     printer.print
#
#     puts "{celsius: " + (@temperature).to_s + ", fahrenheit: " + (@temperature * 9/5 +32).to_s +
#           ", kelvin: " + (@temperature +273.15).to_s + "}"
#   end
#
#   def to_html
#
#     printer = HtmlPrinter.new @temperature
#     printer.print
#
#     puts "<div>"
#       puts "<div>"+(@temperature).to_s + " °C"+"</div>"
#       puts "<div>"+(@temperature * 9/5 +32).to_s + " °F"+"</div>"
#       puts "<div>"+(@temperature +273.15).to_s + " K"+"</div>"
#     puts "</div>"
#   end
#
#   private
#   def initialize temperature
#     @temperature = temperature
#   end
#
# end
