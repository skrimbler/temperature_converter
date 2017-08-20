#!/usr/bin/env ruby

require './lib/temperature.rb'
require './lib/print_html.rb'
require './lib/print_json.rb'
require './lib/print_text.rb'
require './lib/read_cli.rb'
require './lib/read_file.rb'
require './lib/read_mqtt.rb'
require './lib/read_url.rb'

class TemperatureConverter


		def commandline_temperature cliVar
			cli = ReadCli.new cliVar
			cli.read
		end

		def file_temperature fileVar
			file = ReadFile.new
			file.read(fileVar)
		end

    def url_temperature urlVar
      url = ReadUrl.new
			url.read(urlVer)
    end

		def mqtt_reader mqttVar
			mqtt = ReadMqtt.new
			mqtt.read(mqttVar)
		end

		def to_text
			tprint = PrintText.new
			tprint.print
		end

		def to_json
			jprint = PrintJson.new
			jprint.print
		end

		def to_html
			hprint = PrintHtml.new
			hprint.print
		end

end
