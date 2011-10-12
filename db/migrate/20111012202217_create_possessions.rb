class CreatePossessions < ActiveRecord::Migration
  def change
    create_table :possessions do |t|
      t.belongs_to :thing
      t.belongs_to :user

      t.timestamps
    end
    add_index :possessions, :thing_id
    add_index :possessions, :user_id
  end
end
