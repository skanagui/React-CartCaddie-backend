class User < ApplicationRecord
    
    has_many :carts
    has_many :cart_items, through: :cart_items
    validates :email_address, uniqueness: true 
    


end
