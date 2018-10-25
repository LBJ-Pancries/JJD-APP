class AddImagesToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :images, :string
  end
end
