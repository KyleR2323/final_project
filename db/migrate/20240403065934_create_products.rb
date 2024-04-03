class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.integer :product_id
      t.string :brand
      t.string :model
      t.string :product_type
      t.integer :quantity_available
      t.string :gender
      t.string :size
      t.string :color
      t.string :material
      t.decimal :price
      t.integer :saleprice_id

      t.timestamps
    end
  end
end
