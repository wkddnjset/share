class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :user_id, null: false, default: 0, index: true 
      t.integer :event_id, null: false, default: 0, index: true

      t.timestamps
    end
  end
end
