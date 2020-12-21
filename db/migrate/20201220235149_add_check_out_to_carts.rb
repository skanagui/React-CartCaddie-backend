class AddCheckOutToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :check_out, :boolean, default: false 
    
  end
end
