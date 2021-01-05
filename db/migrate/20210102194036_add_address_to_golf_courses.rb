class AddAddressToGolfCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :golf_courses, :address, :string
  end
end
