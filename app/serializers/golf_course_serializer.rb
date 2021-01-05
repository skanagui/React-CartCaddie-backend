class GolfCourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :items, :image, :address, :scorecard
  has_many :items 
  has_many :reviews 
end
