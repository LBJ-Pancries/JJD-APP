class AddRecordsToDiaries < ActiveRecord::Migration[5.1]
  def change
    add_column :diaries, :records, :string, :default => "draft"
  end
end
