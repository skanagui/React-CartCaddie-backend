class CartSerializer < ActiveModel::Serializer
  attributes :id, :cart_items, :user_id, :check_out, :total_price
  has_many :items 
end
