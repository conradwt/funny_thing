class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics, :force => true do |t|
      t.references :forum
      t.references :user
      t.string :title
      t.string :description
      t.string :display_status
      t.timestamps
    end
    
    add_index :topics, :forum_id
    add_index :topics, :user_id
    add_index :topics, :created_at
  end

  def self.down
    remove_index :topics, :created_at
    remove_index :topics, :user_id
    remove_index :topics, :forum_id
    drop_table :topics
  end
end
