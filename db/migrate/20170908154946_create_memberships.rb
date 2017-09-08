class CreateMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.integer :user_id, null: false, default: 0, index: true 
      t.integer :group_id, null: false, default: 0, index: true 

      t.timestamps
    end
  end
end
