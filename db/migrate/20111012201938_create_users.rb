class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :facebook_id
      t.string :access_token
      t.string :photo_url

      t.timestamps
    end
  end
end
