class GolfCourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :items
  has_many :items 
end
