class CartSerializer < ActiveModel::Serializer
  attributes :id, :cart_items, :user 
end
