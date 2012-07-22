class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts, :force => true do |t|
      t.references :user  
      t.references :topic
      t.string :title
      t.string :body
      t.string :display_status
      t.timestamps
    end
    
    add_index :posts, :user_id
    add_index :posts, :topic_id
    add_index :posts, :created_at
  end

  def self.down
    remove_index :posts, :created_at
    remove_index :posts, :topic_id
    remove_index :posts, :user_id
    drop_table :posts
  end
end
