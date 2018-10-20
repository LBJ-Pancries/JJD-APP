class RemoveHouseIdIntoCategory < ActiveRecord::Migration[5.1]
  def change
    remove_column :categories, :house_id
  end
end
