class Item < ApplicationRecord
    belongs_to :golf_course 
    has_many :cart_items
    has_many :carts, through: :cart_items 
end
