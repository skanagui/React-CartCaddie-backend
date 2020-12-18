class User < ApplicationRecord
    has_many :reviews 
    has_many :carts
    has_many :cart_items, through: :carts
    validates :email_address, uniqueness: true 
    


end
