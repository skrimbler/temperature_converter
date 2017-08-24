require "./lib/temperature.rb"
require "./lib/print_html.rb"
require "./lib/print_text.rb"
require "./lib/print_json.rb"
require "./lib/read_mqtt.rb"
require "./lib/read_cli.rb"
require "./lib/read_file.rb"
require "./lib/read_url.rb"

class TemperatureConverter

		def commandline_temperature value
			cmdreader = CommandlineReader.new value
			cmdreader.read
		end

		def file_temperature file
			filereader = FileReader.new
			filereader.read(file)
		end

		def url_temperature url
			urlreader = URLReader.new
			urlreader.read(url)
		end

		def mqtt_reader (ttn_host, port, username, password, sensor_id)
			mqttreader = MQTTReader.new
			mqttreader.read(ttn_host, port, username, password, sensor_id)
		end

		def to_text
			textprint = PrintText.new
			textprint.print
		end

		def to_json
			jsonprint = PrintJson.new
			jsonprint.print
		end

		def to_html
			htmlprint = PrintHtml.new
			htmlprint.print
		end

end
