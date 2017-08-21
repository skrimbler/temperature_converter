class FileReader

	attr_reader :temperature

	def initialize
		$temperature
	end

	def read file
		$temperature = File.open(file).read
	end
end
