class CreateFriendships < ActiveRecord::Migration[5.0]
  def change
    create_table :friendships do |t|
      t.integer :friend_from_id, null: false, default: 0, index: true 
      t.integer :friend_to_id, null: false, default: 0, index: true 

      t.timestamps
    end
  end
end
