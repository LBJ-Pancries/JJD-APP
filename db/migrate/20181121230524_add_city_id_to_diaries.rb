class AddCityIdToDiaries < ActiveRecord::Migration[5.1]
  def change
    add_column :diaries, :juhe_id, :integer
    add_index :diaries, :juhe_id
  end
end
