class User < ApplicationRecord
    
    has_many :carts
    has_many :car_items, through: :car_items
    validates :email_address, uniqueness: true 
    


end
