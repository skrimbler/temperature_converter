require 'net/http'
require 'uri'

class ReadUrl

	attr_reader :temperature

	def initialize
		$temperature
	end

	def url_temperature(url)
		$temperature = Net::HTTP.get(URI.parse(url)).to_f
	end
end
