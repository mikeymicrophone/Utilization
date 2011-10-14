class CreatePatronages < ActiveRecord::Migration
  def change
    create_table :patronages do |t|
      t.belongs_to :characteristic
      t.belongs_to :user

      t.timestamps
    end
    add_index :patronages, :characteristic_id
    add_index :patronages, :user_id
  end
end
