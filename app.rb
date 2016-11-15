#!/usr/bin/env ruby
require './lib/temperature_converter.rb'

cmdl_input = ARGV[0]
file_path = "temperature.txt"
url_path = "http://labict.be/software-engineering/temperature/api/temperature/fake"

origin_rb = "app"

puts "output : read from cmdline"
TemperatureConverter.commandline_temperature cmdl_input

puts "output : read from .txt-file"
TemperatureConverter.file_temperature file_path

puts "output : read from url"
TemperatureConverter.url_temperature url_path

puts "output : read from ttl"
TemperatureConverter.ttl_temperature origin_rb
