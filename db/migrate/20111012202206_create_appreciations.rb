class CreateAppreciations < ActiveRecord::Migration
  def change
    create_table :appreciations do |t|
      t.belongs_to :thing
      t.belongs_to :user

      t.timestamps
    end
    add_index :appreciations, :thing_id
    add_index :appreciations, :user_id
  end
end
