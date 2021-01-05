class AddScorecardToGolfCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :golf_courses, :scorecard, :string
  end
end
