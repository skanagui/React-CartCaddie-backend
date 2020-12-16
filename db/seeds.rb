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
Cart.destroy_all
CartItem.destroy_all

user1 = User.create!(name: "John Doe", email_address: "user@email.com", password: "pass123")


golfcourse1 = GolfCourse.create!(name: "Van Cortlandt Golf Course")

item1 = Item.create!(name: "6-Pack Budlight", image: "https://www.totalwine.com/dynamic/x1000,6pk/media/sys_master/twmmedia/h71/hda/11864994578462.png", price: 10.00, description: "Crispy, water flavored beer.", golf_course_id: golfcourse1.id )
item2 = Item.create!(name: "Bacon Burger", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWrlwblTaCkEVWffS9wxSMom8D_XNtpDg3uw&usqp=CAU", price: 7.00, description: "Crispy bacon, Angus Beef Patty, Lettuce, Tomatoes, Onions, Pickles.", golf_course_id: golfcourse1.id )
item2 = Item.create!(name: "Chicken Club", image: "https://img.taste.com.au/HWX_VnFk/w720-h480-cfill-q80/taste/2016/11/classic-turkey-club-sandwich-24417-1.jpeg", price: 8.00, description: "Classic Turkey Club", golf_course_id: golfcourse1.id )

cart1= Cart.create!(user_id: user1.id, total_price: 4.00 )

cartItem1 = CartItem.create!(cart_id: cart1.id, item_id:item1.id, quantity: 1)
