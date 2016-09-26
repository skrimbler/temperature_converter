
class TemConverter

  def initialize tem
    @tem = tem
    # @ is een instantievariabele
    # @@ globale variabele
    # weight zelf is een lokale variable als argument van deze scoop en functie
  end

  def convert
    puts ("input is " + (@tem).to_s) + " °C"
    puts (@tem).to_s + " °C = " +(@tem * 9/5 +32).to_s + " °F, do you even burn, Brah!?"
    puts (@tem).to_s + " °C = " +(@tem +273.15).to_s + " K"
  end



end
