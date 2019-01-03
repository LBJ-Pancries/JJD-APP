class Cities < ActiveRecord::Migration[5.1]
  def change
    
    remove_column :cities, :current_weather, :string
    remove_column :cities, :current_wind, :string
    remove_column :cities, :current_date, :string
  end
end
