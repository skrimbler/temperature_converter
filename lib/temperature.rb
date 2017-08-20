class Convert

	KELVIN = 273.15
	FAHRENHEIT_OFFSET = 32
	FAHRENHEIT_SLOPE = Rational(9,5)

	attr_reader :temperature

  def to_celcius
 		$temperature
 	end

	def to_fahrenheit
	 	($temperature * FAHRENHEIT_SLOPE) + FAHRENHEIT_OFFSET
	end

	 def to_kelvin
	 	$temperature + KELVIN
	 end

end
