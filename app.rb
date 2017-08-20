#!/usr/bin/env ruby
require './lib/temperature_converter_nielsvanvlaenderen'
require 'optparse'

# cmdl_input = ARGV[0]
file_path = "file.txt"
url_path = "http://labict.be/software-engineering/temperature/api/temperature/fake"

converter = TemperatureConverter.new

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: ruby app.rb [options]"

  opts.on("-t temperature", "--temperature temperature", "Input temperature") do |temerature|
    converter.commandline_temperature temperature
  end

  opts.on("-f file", "--file file" , "Input path to temperature file") do |file|
    converter.file_temperature file
  end

  opts.on("-u url", "--url url", "Input URL to temperature") do |url|
    converter.url_temperature url
    end

  opts.on("-m", "--mqtt", "Input Mqtt") do |mqtt|
    converter.mqtt_reader mqtt
  end

  opts.on("--text" , "Output as text") do |text|
    puts converter.to_text
  end

  opts.on("--html", "Output as HTML") do |html|
    puts converter.to_html
  end

  opts.on("--json", "Output as JSON") do |json|
    puts converter.to_json
  end

end.parse!
