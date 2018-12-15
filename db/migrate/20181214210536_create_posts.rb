class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :author, null: false
      t.text :content, null: false 
      t.attachment :avatar
      t.attachment :photo
      t.attachment :video 
      
      t.timestamps
    end

    add_index :posts, :author
  end
end
