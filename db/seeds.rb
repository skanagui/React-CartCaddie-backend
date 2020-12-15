# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
GolfCourse.destroy_all
Item.destroy_all

user1 = User.create!(name: "John Doe", email_address: "user@email.com", password: "pass123")


golfcourse1 = GolfCourse.create!(name: "Van Cortlandt Golf Course")
item1 = Item.create!(name: "6-Pack Budlight", image: "", price: 10.00, description: "Crispy, water flavored beer.", golf_course_id: golfcourse1.id )