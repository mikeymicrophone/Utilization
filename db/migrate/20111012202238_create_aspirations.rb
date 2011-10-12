class CreateAspirations < ActiveRecord::Migration
  def change
    create_table :aspirations do |t|
      t.belongs_to :thing
      t.belongs_to :user

      t.timestamps
    end
    add_index :aspirations, :thing_id
    add_index :aspirations, :user_id
  end
end
