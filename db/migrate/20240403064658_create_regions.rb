class CreateRegions < ActiveRecord::Migration[7.1]
  def change
    create_table :regions do |t|
      t.integer :region_id
      t.string :region_name

      t.timestamps
    end
  end
end
