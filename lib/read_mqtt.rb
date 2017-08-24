require 'rubygems'
require 'mqtt'
require 'json'

class MQTTReader

	attr_reader :temperature

	def initialize
		$temperature
	end

	def read (ttn_host, port, username, password, sensor_id)
      MQTT::Client.connect(
            :host => ttn_host,
            :port => port,
            :username => username,
            :password => password
          ) do |c|
        c.get(sensor_id) do |topic,message|
          obj = JSON.parse("#{message}")
          $temperature = obj['fields']['temperature']
				c.disconnect()
        end
      end
	end
end
