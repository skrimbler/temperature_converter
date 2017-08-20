#!/usr/bin/env ruby
class ReadFile

	attr_reader :temperature

	def initialize
		$temperature
	end

	def read file
 		$temperature = File.open(file).read
	end
end
