require './lib/tem_converter.rb'

input = ARGV.first.to_f

tem_converter = TemConverter.new input
puts tem_converter.convert
