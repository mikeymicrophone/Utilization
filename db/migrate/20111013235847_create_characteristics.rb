class CreateCharacteristics < ActiveRecord::Migration
  def change
    create_table :characteristics do |t|
      t.belongs_to :detail
      t.belongs_to :thing

      t.timestamps
    end
    add_index :characteristics, :detail_id
    add_index :characteristics, :thing_id
  end
end
