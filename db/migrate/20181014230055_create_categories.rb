class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
    add_column :houses, :category_id, :integer
    add_index :houses, :category_id
  end
end
