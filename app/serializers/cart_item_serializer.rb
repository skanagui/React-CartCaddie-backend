class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :item, :cart, :quantity, :item_name

  
  
end
