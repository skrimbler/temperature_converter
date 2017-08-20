#!/usr/bin/env ruby

require './lib/temperature.rb'
require './lib/print_html.rb'
require './lib/print_json.rb'
require './lib/print_text.rb'
require './lib/read_cli.rb'
require './lib/read_file.rb'
require './lib/read_mqtt.rb'
require './lib/read_url.rb'

class Converter
		def to_text
			newtemp = PrintText.new
			newtemp = print_text
		end

		def to_json
			newtemp = PrintJson.new
			newtemp = print_json
		end

		def to_html
			newtemp = PrintHtml.new
			newtemp = print_html
		end



		def commandline_temperature temperature
			newtemp = ReadCli.new temperature
			newtemp.to_celcius
		end

		def file_temperature
			newtemp = ReadFile.new
			newtemp.file_temperature
		end

    def url_temperature urlVar
      newtemp = ReadUrl.new
			newtemp.url_temperature(urlVar)
    end

		def mqtt_reader mqttVar
			newtemp = ReadMqtt.new
			newtemp.read(mqttVar)
		end




end
