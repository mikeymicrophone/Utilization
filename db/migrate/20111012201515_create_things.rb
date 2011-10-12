class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :name
      t.string :make
      t.string :photo_url
      t.string :url
      t.text :description
      t.belongs_to :user

      t.timestamps
    end
    add_index :things, :user_id
  end
end
