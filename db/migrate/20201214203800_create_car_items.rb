class CreateCarItems < ActiveRecord::Migration[6.0]
  def change
    create_table :car_items do |t|
      t.integer :cart_id
      t.integer :item_id
      t.integer :quantity

      t.timestamps
    end
  end
end
