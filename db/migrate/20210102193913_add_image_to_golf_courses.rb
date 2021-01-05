class AddImageToGolfCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :golf_courses, :image, :string
  end
end
