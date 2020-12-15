class CartSerializer < ActiveModel::Serializer
  attributes :id, :cart_items, :user 
  has_many :items 
end
