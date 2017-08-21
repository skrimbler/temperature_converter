# require "./lib/temperature_converter"
require "./lib/temperature_converter.rb"
# require 'net/http'
# require 'uri'
require 'optparse'

# cmdl_input = ARGV[0]
# file_path = "file.txt"
# url_path = "http://labict.be/software-engineering/temperature/api/temperature/fake"

# converter = TemperatureConverter.new
#
# options = {}
# OptionParser.new do |opts|
#   opts.banner = "Usage: ruby app.rb [options]"
#
#   opts.on("-t temperature", "--temperature temperature", "Input temperature") do |temerature|
#     converter.commandline_temperature temperature
#   end
#
#   opts.on("-f file", "--file file" , "Input path to temperature file") do |file|
#     converter.file_temperature file
#   end
#
#   opts.on("-u url", "--url url", "Input URL to temperature") do |url|
#     converter.url_temperature url
#     end
#
#   opts.on("-m", "--mqtt", "Input Mqtt") do |mqtt|
#     converter.mqtt_reader mqtt
#   end
#
#   opts.on("--text" , "Output as text") do |text|
#     puts converter.to_text
#   end
#
#   opts.on("--html", "Output as HTML") do |html|
#     puts converter.to_html
#   end
#
#   opts.on("--json", "Output as JSON") do |json|
#     puts converter.to_json
#   end
#
# end.parse!
ttn_host = "staging.thethingsnetwork.org"
port = 1883
username = '70B3D57ED00012B2',
password = 'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w='
sensor_id = '70B3D57ED00012B2/devices/00000000AE6C63E4/up'

converter = TemperatureConverter.new

options = {}

OptionParser.new do |opts|
  opts.banner = "Usage: ruby app.rb [options]"

  opts.on("-t temperature","--temperature temperature","Give number to convert") do |temperature|
    converter.commandline_temperature temperature
  end


  opts.on("-f file","--file file","convert from file") do |file|
    converter.file_temperature file
  end


  opts.on("-u url","--url url","convert from url") do |url|
  converter.url_temperature url
  end

  opts.on("-m mqtt","--mqtt mqtt","convert from mqtt") do |mqtt|
  converter.mqtt_reader(ttn_host, port, username, password, sensor_id)
  end

  opts.on("--text","give output in plain text") do |text|
    puts converter.to_text
  end


  opts.on("--json","give output in JSON string") do |json|
    puts converter.to_json
  end


  opts.on("--html","give output in html format") do |html|
    puts converter.to_html
  end
end.parse!
