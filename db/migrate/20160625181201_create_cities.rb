class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :location
      t.string :weather_url
      t.string :rain_image_url
      t.string :sun_image_url
      t.string :webcam_url

      t.timestamps null: false
    end
  end
end
