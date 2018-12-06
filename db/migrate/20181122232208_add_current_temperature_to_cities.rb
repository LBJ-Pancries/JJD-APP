class AddCurrentTemperatureToCities < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :current_temperature, :string
  end
end
