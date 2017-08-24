require "./lib/temperature_converter.rb"
require 'optparse'

ttn_host = "staging.thethingsnetwork.org"
port = 1883
username = '70B3D57ED00012B2'
password = 'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w='
sensor_id = '70B3D57ED00012B2/devices/00000000AE6C63E4/up'

converter = TemperatureConverter.new
options = {}

OptionParser.new do |opts|
  opts.banner = "Usage: ruby app.rb [options]"

  opts.on("-t cmdline","--temperature cmdline", "from cmdline") do |temperature|
    converter.commandline_temperature temperature
  end


  opts.on("-f file","--file file","from file") do |file|
    converter.file_temperature file
  end


  opts.on("-u url","--url url","from url") do |url|
  converter.url_temperature url
  end

  opts.on("-m mqtt","--mqtt mqtt","from mqtt") do |mqtt|
  converter.mqtt_reader(ttn_host, port, username, password, sensor_id)
  end

  opts.on("--text","to text") do |text|
    puts converter.to_text
  end


  opts.on("--json","to json") do |json|
    puts converter.to_json
  end


  opts.on("--html","to html") do |html|
    puts converter.to_html
  end
end.parse!
