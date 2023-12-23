class CreateGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :groups do |t|
      t.references :event, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :group_number
      t.timestamps
    end
  end
end
