class ReadFile

	attr_reader :temperature

	def initialize
		$temperature
	end

	def file_temperature
 		$temperature = File.open("file.txt","r").sysread(6).to_f
	end
end
