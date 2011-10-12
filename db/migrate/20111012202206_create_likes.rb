class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.belongs_to :thing
      t.belongs_to :user

      t.timestamps
    end
    add_index :likes, :thing_id
    add_index :likes, :user_id
  end
end
