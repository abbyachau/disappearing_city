class AddOpenWeatherToCities < ActiveRecord::Migration
  def change
    add_column :cities, :open_weather_city_id, :string
  end
end
