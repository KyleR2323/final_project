class CreateDeliveries < ActiveRecord::Migration[7.1]
  def change
    create_table :deliveries do |t|
      t.integer :delivery_id
      t.integer :order_id
      t.datetime :estimated_arrival
      t.integer :quantity

      t.timestamps
    end
  end
end
