class CreateFacilities < ActiveRecord::Migration[5.1]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :brand
      t.string :type
      t.string :power
      t.string :size
      t.text :commit

      t.timestamps
    end
  end
end
