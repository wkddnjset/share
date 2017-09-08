class CreateFriendships < ActiveRecord::Migration[5.0]
  def change
    create_table :friendships do |t|
      t.integer :user_id, null: false, default: 0, index: true
      t.integer :friend_id, null: false, default: 0, index: true
      t.boolean :is_pending, null: false, default: true, index: true
      t.boolean :is_accepted, null: false, default: false, index: true

      t.timestamps
    end
  end
end
