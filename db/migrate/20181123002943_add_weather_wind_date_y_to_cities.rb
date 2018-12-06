class AddWeatherWindDateYToCities < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :current_weather, :string
    add_column :cities, :current_wind, :string
    add_column :cities, :current_date, :string
  end
end
