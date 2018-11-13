class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.integer :record_id, :index => true
      t.integer :diary_id, :index => true
      t.timestamps
    end
  end
end
