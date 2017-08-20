#!/usr/bin/env ruby
require 'net/http'
require 'uri'

class ReadUrl

	attr_reader :temperature

	def initialize
		$temperature
	end

	def read url
		$temperature = Net::HTTP.get(URI.parse(url))
	end
end
