class Temperature

  attr_reader :temperature

  KELVIN_SHIFT = 273.15
  FAHRENHEIT_OFFSET = 32
  FARENHEIT_SLOPE = Rational(9,5)

  def initialize temperature
    @temperature = temperature
  end

  def to_celsius
    temperature
  end

  def to_farenheit
    (to_celsius * FARENHEIT_SLOPE) + FAHRENHEIT_OFFSET
  end

  def to_kelvin
    to_celsius + KELVIN_SHIFT
  end
end  
