class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :group_id, null: true, default: nil, index: true 

      t.timestamps
    end
  end
end
