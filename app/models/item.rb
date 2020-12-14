class Item < ApplicationRecord
    belongs_to :golf_course 
    has_many :car_items
    has_many :carts, through :cart_items 
end
