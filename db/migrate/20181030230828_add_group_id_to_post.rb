class AddGroupIdToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :group_id, :integer
    add_column :posts, :content, :text
    remove_column :posts, :description
  end
end
