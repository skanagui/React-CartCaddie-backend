class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :price, :carts, :description, :golf_course_id 
end
