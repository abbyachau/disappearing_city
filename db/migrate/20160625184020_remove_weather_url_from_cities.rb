class RemoveWeatherUrlFromCities < ActiveRecord::Migration
  def change
    remove_column :cities, :weather_url, :string
  end
end
