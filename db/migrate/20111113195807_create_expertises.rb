class CreateExpertises < ActiveRecord::Migration
  def change
    create_table :expertises do |t|
      t.belongs_to :thing
      t.belongs_to :user

      t.timestamps
    end
    add_index :expertises, :thing_id
    add_index :expertises, :user_id
  end
end
