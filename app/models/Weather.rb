require 'open-uri'
require 'json'

class Weather
  attr_reader :humidity, :rain, :temperature

  def initialize(city, country)
    @city = format(city)
    @country = country
  end

  def weather_conditions
    open("http://api.wunderground.com/api/d296a64cc67ea4fd/geolookup/conditions/q/#{@country}/#{@city}.json") do |f|
      json_string = f.read
      parsed_json = JSON.parse(json_string)
      @temperature = parsed_json['current_observation']['temp_f']
      @humidity = parsed_json['current_observation']['relative_humidity']
    end

    open("http://api.wunderground.com/api/d296a64cc67ea4fd/geolookup/forecast/q/#{@country}/#{@city}.json") do |f|
      json_string = f.read
      parsed_json = JSON.parse(json_string)
      @rain = parsed_json['forecast']['txt_forecast']['forecastday'].first['pop']
    end

  end

  private

    def format city
      city.parameterize.gsub('-', '_')
    end

end
#
# "forecast"=>
#   {"txt_forecast"=>
#     {"date"=>"4:05 PM CDT",
#      "forecastday"=>
#       [{"period"=>0,
#         "icon"=>"chancetstorms",
#         "icon_url"=>"http://icons.wxug.com/i/c/k/chancetstorms.gif",
#         "title"=>"Friday",
#         "fcttext"=>"Showers and thunderstorms early. Lows overnight in the mid 70s.",
#         "fcttext_metric"=>"Partly cloudy. Low 24C.",
#         "pop"=>"50"},
