class WeatherPagesController < ApplicationController

  before_action do
    @cities = {
      'Houston' => 'texas',
      'Shanghai' => 'CN',
      'Istanbul' => 'TR',
      'Karachi' => 'PK',
      'Mumbai' => 'IN',
      # 'Moscow' => 'RS', API doesn't return anything
      'Manila' => 'PH',
      'Sao Paulo' => 'BR',
      'Beijing' => 'Beijing',
      'Tianjin' => 'CN',
      'Guangzhou' => 'CN',
      'New Delhi' => 'IN',
      'Seoul' => 'KR',
      # 'Shenzhen' => 'CN', API doesn't return anything
      'Jakarta' => 'ID',
      'Tokyo' => 'JP',
      'Mexico City' => 'MX',
      # 'Kinshasa' => 'CD', API doesn't return anything
      'Bengaluru' => 'IN',
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
