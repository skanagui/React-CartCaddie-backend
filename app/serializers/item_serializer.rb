class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :price, :description, :golf_course_id 
end
