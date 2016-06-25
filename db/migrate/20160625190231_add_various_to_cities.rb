class AddVariousToCities < ActiveRecord::Migration
  def change
    add_column :cities, :temperature, :string
    add_column :cities, :description, :string
    add_column :cities, :weather_status, :string
  end
end
