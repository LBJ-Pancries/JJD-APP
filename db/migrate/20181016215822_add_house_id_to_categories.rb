class AddHouseIdToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :house_id, :integer
  end
end
