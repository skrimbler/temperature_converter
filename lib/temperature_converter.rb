
class TemperatureConverter

  # def initialize temperature
    # @temperature = temperature
        # @ is een instantievariabele
        # @@ globale variabele
        # weight zelf is een lokale variable als argument van deze scoop en functie
  # end

  require 'net/http'
  require 'uri'



  def commandline_temperature converter
    @temperature = converter.first.to_f
  end

  def file_temperature converter
    @temperature = File.open(converter).read.to_f
  end

  def url_temperature converter
    @temperature = Net::HTTP.get(URI.parse(converter)).to_f
  end

  def to_text
    puts "Temperature: "
    puts (@temperature).to_s + " °C"
    puts (@temperature * 9/5 +32).to_s + " °F"
    puts (@temperature +273.15).to_s + " K"
  end

  def to_json
    puts "{celsius: " + (@temperature).to_s + ", fahrenheit: " + (@temperature * 9/5 +32).to_s +
          ", kelvin: " + (@temperature +273.15).to_s + "}"
  end

  def to_html
    puts "<div>"
      puts "<div>"+(@temperature).to_s + " °C"+"</div>"
      puts "<div>"+(@temperature * 9/5 +32).to_s + " °F"+"</div>"
      puts "<div>"+(@temperature +273.15).to_s + " K"+"</div>"
    puts "</div>"
  end

  private
  def initialize temperature
    @temperature = temperature
  end

end
