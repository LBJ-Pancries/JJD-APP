class RemoveCategoryIdIntoHouse < ActiveRecord::Migration[5.1]
  def change
    remove_column :houses, :category_id
  end
end
