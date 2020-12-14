class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.string :total_price
      t.string :float

      t.timestamps
    end
  end
end
