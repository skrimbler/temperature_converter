require './lib/temperature_converter.rb'

converter = TemperatureConverter.new converter

converter.commandline_temperature ARGV
puts "Command:"
puts converter.to_text
puts converter.to_json
puts converter.to_html

converter.file_temperature "temperature.txt"
puts "File:"
puts converter.to_text
puts converter.to_json
puts converter.to_html

converter.url_temperature "http://labict.be/software-engineering/temperature/api/temperature/fake"
puts "URL:"
puts converter.to_text
puts converter.to_json
puts converter.to_html
