class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.integer :max_participants
      t.integer :max_group_size
      t.date :open_date
      t.date :deadline
      t.timestamps
    end
  end
end
