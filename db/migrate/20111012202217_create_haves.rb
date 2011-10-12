class CreateHaves < ActiveRecord::Migration
  def change
    create_table :haves do |t|
      t.belongs_to :thing
      t.belongs_to :user

      t.timestamps
    end
    add_index :haves, :thing_id
    add_index :haves, :user_id
  end
end
