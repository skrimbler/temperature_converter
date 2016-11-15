#!/usr/bin/env ruby

class CelciusConverter
  attr_accessor :fileName
  attr_accessor :fileCreated
  attr_accessor :fileLog
  attr_accessor :tempCelcius
  attr_accessor :tempKelvin
  attr_accessor :tempFahrenheit
  attr_accessor :resultText
  attr_accessor :resultHTML
  attr_accessor :resultJSON

  #Create the object
  def initialize
    @tempCelcius = ARGV[0]
    @fileLog = 'data.txt'
    convert_to_both
  end

    def convert_to_both
      convert_to_Fahrenheit(tempCelcius)
      convert_to_Kelvin(tempCelcius)
    end


  def convert_to_Fahrenheit(tempCelcius)
    @tempFahrenheit = (tempCelcius.to_f * 9 / 5 ) + 32
  end
  def convert_to_Kelvin(tempCelcius)
    @tempKelvin = tempCelcius.to_f +  273.15
  end

  def to_text
    @resultText = %{Temperature
      #{tempCelcius} °C
      #{tempFahrenheit} °F
      #{tempKelvin} K
    }
  end

  def to_html
    @resultHTML=
    %{  <div>
        <div>#{tempCelcius} °C</div>
        <div>#{tempFahrenheit} °F</div>
        <div>#{tempKelvin} K</div>
      </div>}
  end

  def to_json
    @resultJSON= %{(celcius: #{tempCelcius}, fahrenheit: #{tempFahrenheit}, kelvin: #{tempKelvin})}
  end

  def show_result
    if @tempCelcius.nil?
      show_intro
      puts " No Celcius temperature has been passed as an argument"
      puts ' '
      puts ' Task failed.'
      puts ' '
    else

      show_intro
      puts " Celcius temperature : #{tempCelcius} °C"
      puts " Fahrenheit temperature : " + "#{tempFahrenheit}".to_s[0,5] +"°F"
      puts " Kelvin temperature : #{tempKelvin} °K"
      puts ' '
      sleep(5)

      show_intro
      to_text
      puts 'Showing to_text result :'
      puts "#{resultText}"
      puts ' '
      sleep(5)

      show_intro
      to_html
      puts 'Showing to_html result :'
      puts "#{resultHTML}"
      puts ' '
      sleep(5)

      show_intro
      to_json
      puts 'Showing to_json result :'
      puts "#{resultJSON}"
      puts ' '
      sleep(5)

      show_intro
      File.write(@fileLog, "#{tempCelcius}")
      puts ' Celcius temperature has been logged to ' + @fileLog + ' at ' + File.ctime(@fileLog).to_s
      puts ' '

      puts ' Task completed.'
      puts ' '

    end
  end
end

if __FILE__ == $0
  cc = CelciusConverter.new
  cc.show_result
end
