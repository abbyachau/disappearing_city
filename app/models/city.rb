require 'open_weather'

class City < ActiveRecord::Base

  def update_forecast!
    forecast = OpenWeather::Current.city_id( self.open_weather_city_id, { APPID: Figaro.env.open_weather_app_id })
    status = forecast["weather"].first["main"].downcase
    desc = forecast["weather"].first["description"].downcase
    self.update(weather_status: status, description: desc)
  end

  def self.update_all_forecasts
    City.all.each { |city| city.update_forecast! }
  end

end
