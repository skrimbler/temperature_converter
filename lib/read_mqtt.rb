#!/usr/bin/env ruby
require 'rubygems'
require 'mqtt'
require 'json'

class ReadMqtt

	attr_reader :temperature

	# def initialize
	# 	$temperature
	# end

	def mqtt_temperature
			# countCycles=0
      MQTT::Client.connect(
            :host => 'staging.thethingsnetwork.org',
            :port => '1883',
            :username => '70B3D57ED00012B2',
            :password => 'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w='
          ) do |c|
        c.get(sensor_id) do |topic,message|
          obj = JSON.parse("#{message}")
					# dev_eui = obj['dev_eui']
					# countCycles = countCycles + 1
          #puts "#{topic}: #{message}"
          # another = JSON.parse("#{message}")
          # temps = another['fields']
          # read_ttl_temps = temps.select {|temp| temp['temperature'] != ''}
          # puts read_ttl_temps
          #
          # another = JSON.parse("#{read_ttl_temps}")
          # temps = another['temperature']
          # read_ttl_temps = temps.select {|temp| temp['temperature'] != ''}
          #
          # puts read_ttl_temps
          # ShowLogo.show_intro
						# puts "output : read from ttl".white
					  # puts "======================\n\n".white
          # TemperatureOutput.show_output(TemperatureConvert.convert("#{sv1}"))
					# puts "-------------------------------------------------Cycle nr #{countCycles}".yellow
					# puts "------------------------------------dev_eui #{dev_eui}".magenta
					# sv1 = obj['fields']['temperature']
					#client.disconnect()
          $temperature = obj['fields']['temperature']
					#puts temp
					# temp = temp.to_f
					# @temp = temp
				c.disconnect()
					# break if message[0,1] != nil
        end
      end
			# @temp
	end
end
