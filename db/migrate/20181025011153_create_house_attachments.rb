class CreateHouseAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :house_attachments do |t|
      t.integer :house_id, :index => true
      t.string :attachment
      t.string :description
      t.timestamps
    end
  end
end
