# == Schema Information
#
# Table name: cities
#
#  id                   :integer          not null, primary key
#  location             :string
#  rain_image_url       :string
#  sun_image_url        :string
#  webcam_url           :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  open_weather_city_id :string
#  temperature          :string
#  description          :string
#  weather_status       :string
#

class City < ActiveRecord::Base
  def check_weather
    options = { APPID: ENV['open_weather_api_key'] }
    city_weather = OpenWeather::Current.city_id(city.open_weather_city_id, options)
  end
end
