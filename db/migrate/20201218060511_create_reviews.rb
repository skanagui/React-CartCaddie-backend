class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :golf_course_id
      t.string :title
      t.string :body
      t.string :date

      t.timestamps
    end
  end
end
