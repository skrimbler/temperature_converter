require './lib/tem_converter.rb'

require 'net/http'
require 'uri'

input =  Net::HTTP.get(URI.parse("http://labict.be/software-engineering/temperature/api/temperature/fake")).to_f


#input = ARGV.first.to_f
#input = File.open('temperature.txt').read.to_f

tem_converter = TemConverter.new input
puts tem_converter.convert
