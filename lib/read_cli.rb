#!/usr/bin/env ruby
class ReadCli

	attr_reader :temperature

	def initialize temperature
		$temperature = temperature
	end

	def read
 		$temperature
	end
end
