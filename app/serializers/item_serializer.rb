class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :price, :carts, :description
end
