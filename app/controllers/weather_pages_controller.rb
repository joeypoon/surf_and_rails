class WeatherPagesController < ApplicationController

  before_action do
    @cities = {
      'Shanghai' => 'CN',
      'Istanbul' => 'TR',
      'Karachi' => 'PK',
      'Mumbai' => 'IN',
      'Moscow' => 'RU',
      'Manila' => 'PH',
      'Sao Paulo' => 'BR',
      'Beijing' => 'CN',
      'Tianjin' => 'CN',
      'Guangzhou' => 'CN',
      'Delhi' => 'IN',
      'Seoul' => 'KR',
      'Shenzhen' => 'CN',
      'Jakarta' => 'ID',
      'Tokyo' => 'JP',
      'Mexico City' => 'MX',
      'Kinshasa' => 'CD',
      'Bangalore' => 'IN',
      'New York City' => 'US',
      'London' => 'GB'
    }
  end

  def index
  end

  def show
    @cities.find do |city, country|
      if city.parameterize == params[:city]
        @city = city
        @country = country
      end
    end

    @weather = Weather.new(@city, @country)
    @weather.weather_conditions
  end

end
