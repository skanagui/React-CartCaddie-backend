class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :golf_course_id, :title, :body, :date
end
