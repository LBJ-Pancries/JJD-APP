class AddImagesToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :images, :string
    remove_column :categories, :image, :string
  end
end
