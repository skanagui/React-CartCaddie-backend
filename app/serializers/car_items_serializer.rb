class CarItemsSerializer < ActiveModel::Serializer
  attributes :id, :item, :cart, :quantity
end
