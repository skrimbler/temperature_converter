require "./lib/temperature.rb"
require "./lib/print_html.rb"
require "./lib/print_text.rb"
require "./lib/print_json.rb"
require "./lib/read_mqtt.rb"
require "./lib/read_cli.rb"
require "./lib/read_file.rb"
require "./lib/read_url.rb"

class TemperatureConverter

		def commandline_temperature argument
			cmdreader = CommandlineReader.new argument
			cmdreader.read
		end

		def file_temperature file
			freader = FileReader.new
			freader.read(file)
		end

		def url_temperature url
			ureader = URLReader.new
			ureader.read(url)
		end

		def mqtt_reader (ttn_host, port, username, password, sensor_id)
			mreader = MQTTReader.new
			mreader.read(ttn_host, port, username, password, sensor_id)
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
