class Cart < ApplicationRecord
    belongs_to :user 
    has_many :car_items 
end
