#!/usr/bin/env ruby
require './lib/temperature_converter_nielsvanvlaenderen'
require 'optparse'

temp = Converter.new

# cmdl_input = ARGV[0]
# file_path = "file.txt"
# url_path = "http://labict.be/software-engineering/temperature/api/temperature/fake"

# converter = TemperatureConverter.new

# options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: ruby app.rb [options]"

  opts.on("-t temperature", "--temperature temperature",Float, "Input temperature") do |t|
    temp.commandline_temperature t
  end

  opts.on("-f file", "--file file" , "Input path to temperature file") do |f|
    temp.file_temperature
  end

  opts.on("-u url", "--url url", "Input URL to temperature") do |u|
    temp.url_temperature('http://labict.be/software-engineering/temperature/api/temperature/fake')
    end

  opts.on("-m", "--mqtt", "Input Mqtt") do |mqtt|
    converter.mqtt_reader mqtt
  end

  opts.on("--text" , "Output as text") do |text|
    puts temp.to_text
  end

  opts.on("--html", "Output as HTML") do |html|
    puts temp.to_html
  end

  opts.on("--json", "Output as JSON") do |json|
    puts temp.to_json
  end

end.parse!
