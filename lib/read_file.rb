class ReadFile

	attr_reader :temperature

	def initialize
		$temperature
	end

	def file_temperature
		afile = File.new("file.txt","r")
		$temperature = afile.sysread(6).to_f
	end
end
