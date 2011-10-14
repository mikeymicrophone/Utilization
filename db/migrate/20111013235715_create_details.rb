class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.text :text
      t.belongs_to :user

      t.timestamps
    end
    add_index :details, :user_id
  end
end
