class CartItem < ApplicationRecord
    belongs_to :cart
    belongs_to :item 

    def item_name
        self.item.name
    end 

end
