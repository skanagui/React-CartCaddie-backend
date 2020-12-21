class User < ApplicationRecord
    has_many :reviews 
    has_many :carts
    has_many :cart_items, through: :carts
    validates :email_address, uniqueness: true 

    def current_cart_pls
        current_cart = self.carts.find_by(check_out: false)
        CartSerializer.new(current_cart)


    end 

    # def past_orders
    #     all_past_orders = self.carts.where(check_out: true)
    #     all_past_orders.map do |carts|
    #         CartSerializer.new(carts)
    #     end 


    # end 



    


end
