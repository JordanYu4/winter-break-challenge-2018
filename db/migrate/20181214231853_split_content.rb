class SplitContent < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :content
    add_column :posts, :sharing_content, :text
    add_column :posts, :life_update, :text
  end
end
