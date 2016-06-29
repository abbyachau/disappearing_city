namespace :city do
  desc "Update Weather for Each City via OpenWeather API"
  task get_weather: [ :environment ] do
    City.update_all_forecasts
    puts "Updates to Weather Done"
  end
end
