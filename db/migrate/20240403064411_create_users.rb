class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :location
      t.string :password
      t.integer :region_id

      t.timestamps
    end
  end
end
