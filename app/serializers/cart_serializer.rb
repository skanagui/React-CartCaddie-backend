class CartSerializer < ActiveModel::Serializer
  attributes :id, :cart_items, :user_id
  has_many :items 
end
