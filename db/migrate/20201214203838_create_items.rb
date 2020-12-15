class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.float :price
      t.string :description
      t.integer :golf_course_id

      t.timestamps
    end
  end
end
