class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :item, :cart, :quantity
end
