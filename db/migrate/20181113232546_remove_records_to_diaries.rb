class RemoveRecordsToDiaries < ActiveRecord::Migration[5.1]
  def change
    remove_column :diaries, :records, :string, :default => "draft"
  end
end
