# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all
User.reset_pk_sequence  
GolfCourse.destroy_all
GolfCourse.reset_pk_sequence
Item.destroy_all
Cart.destroy_all
Cart.reset_pk_sequence
CartItem.destroy_all
Review.destroy_all 

user1 = User.create!(name: "John Doe", email_address: "user@email.com", password: "pass123")


golfcourse1 = GolfCourse.create!(name: "Van Cortlandt Golf Course", image:"https://golf-pass.brightspotcdn.com/dims4/default/a1187c9/2147483647/strip/true/crop/1280x826+0+13/resize/930x600!/quality/90/?url=https%3A%2F%2Fgolf-pass-brightspot.s3.amazonaws.com%2Fc9%2F21%2F9813900915de588892dd6a4c6e84%2F99674.jpg", address:"Van Cortlandt Park S, The Bronx, NY 10463", scorecard:"https://downloads.skygolf.com/scorecard/courseId=19281&facilityId=315936&view=wide&img=1&t=1606190140")
golfcourse2 = GolfCourse.create!(name: "Mosholu Golf Course",image:"https://golf-pass.brightspotcdn.com/dims4/default/37893c4/2147483647/strip/true/crop/1440x929+0+13/resize/930x600!/quality/90/?url=https%3A%2F%2Fgolf-pass-brightspot.s3.amazonaws.com%2F90%2F6b%2Fc83f35047307c658430bfbbf56af%2F74030.jpg", address:"Van Cortlandt Park S, The Bronx, NY 10463", scorecard:"https://downloads.skygolf.com/scorecard/courseId=19281&facilityId=315936&view=wide&img=1&t=1606190140")
golfcourse3 = GolfCourse.create!(name: "Forest Park Golf Course", image:"https://blankslatepages.s3.amazonaws.com/55628ff4c3d14-228882_10150277811683411_2151270_n.jpg", address:"Van Cortlandt Park S, The Bronx, NY 10463", scorecard:"https://downloads.skygolf.com/scorecard/courseId=19281&facilityId=315936&view=wide&img=1&t=1606190140")
golfcourse4 = GolfCourse.create!(name: "Pelham Bay Golf Course", image:"https://www.pelhamsplitrock.com/sites/default/files/gallery/pelham-15.jpg", address:"Van Cortlandt Park S, The Bronx, NY 10463", scorecard:"https://downloads.skygolf.com/scorecard/courseId=19281&facilityId=315936&view=wide&img=1&t=1606190140")
golfcourse5 = GolfCourse.create!(name: "Split Rock Golf Course ", image:"https://golf-pass.brightspotcdn.com/dims4/default/ed19176/2147483647/strip/true/crop/1440x929+0+15/resize/930x600!/quality/90/?url=https%3A%2F%2Fgolf-pass-brightspot.s3.amazonaws.com%2Fc8%2F74%2F309a76ad4b0c10edebb9b9895dd8%2F12897.jpg", address:"Van Cortlandt Park S, The Bronx, NY 10463", scorecard:"https://downloads.skygolf.com/scorecard/courseId=19281&facilityId=315936&view=wide&img=1&t=1606190140")
golfcourse6 = GolfCourse.create!(name: "Marine Park Golf Course", image:"https://www.golfmarinepark.com/images/slideshows/banner_1.jpg", address:"Van Cortlandt Park S, The Bronx, NY 10463", scorecard:"https://downloads.skygolf.com/scorecard/courseId=19281&facilityId=315936&view=wide&img=1&t=1606190140")
golfcourse7 = GolfCourse.create!(name: "Dyker Beach Golf Course", image:"https://www.nycteetimes.com/images/course1.jpg", address:"Van Cortlandt Park S, The Bronx, NY 10463", scorecard:"https://downloads.skygolf.com/scorecard/courseId=19281&facilityId=315936&view=wide&img=1&t=1606190140")
golfcourse8 = GolfCourse.create!(name: "Douglaston Golf Course", image:"https://golf-pass.brightspotcdn.com/dims4/default/d22daf4/2147483647/strip/true/crop/926x521+0+82/resize/590x332!/format/jpg/quality/90/?url=https%3A%2F%2Fgolf-pass-brightspot.s3.amazonaws.com%2Fc4%2F4c%2Fd442c268fe83c43f228df1340003%2F105251.jpg", address:"Van Cortlandt Park S, The Bronx, NY 10463", scorecard:"https://downloads.skygolf.com/scorecard/courseId=19281&facilityId=315936&view=wide&img=1&t=1606190140")
golfcourse9 = GolfCourse.create!(name: "Silver Lake Golf Course", image:"https://www.silverlakegc.com/hole9view.jpg", address:"Staten Island", scorecard:"https://downloads.skygolf.com/scorecard/courseId=19281&facilityId=315936&view=wide&img=1&t=1606190140")




item1 = Item.create!(name: "6-Pack Budlight", image: "https://www.totalwine.com/dynamic/x1000,6pk/media/sys_master/twmmedia/h71/hda/11864994578462.png", price: 10.00, description: "Crispy, cold beer.", golf_course_id: golfcourse1.id )
item2 = Item.create!(name: "Bacon Burger", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWrlwblTaCkEVWffS9wxSMom8D_XNtpDg3uw&usqp=CAU", price: 7.00, description: "Crispy bacon, Angus Beef Patty, Lettuce, Tomatoes, Onions, Pickles.", golf_course_id: golfcourse1.id )
item3 = Item.create!(name: "Chicken Club", image: "https://img.taste.com.au/HWX_VnFk/w720-h480-cfill-q80/taste/2016/11/classic-turkey-club-sandwich-24417-1.jpeg", price: 8.00, description: "Classic Turkey Club", golf_course_id: golfcourse1.id )
item4 = Item.create!(name: "Hot Dog", image: "https://awrestaurants.com/sites/default/files/hotdog_0.png", price: 8.00, description: "Classic Hot Dog", golf_course_id: golfcourse1.id )
item5 = Item.create!(name: "Water", image: "https://d2d8wwwkmhfcva.cloudfront.net/800x/d2lnr5mha7bycj.cloudfront.net/product-image/file/large_603b58ec-4dd2-4f7f-97d7-b90fff8368a0.png", price: 8.00, description: "Ice Cold Water", golf_course_id: golfcourse1.id )
item7 = Item.create!(name: "Turkey & Cheddar Sandwhich", image: "https://assets.kraftfoods.com/recipe_images/Country-Style-Turkey-Cheddar-Sandwich-56793.jpg", price: 8.00, description: "Classic Turkey Club", golf_course_id: golfcourse1.id )
item8 = Item.create!(name: "M&Ms", image: "https://images-na.ssl-images-amazon.com/images/I/71UGX--4VpL._SL1000_.jpg", price: 8.00, description: "Chocolate Candy", golf_course_id: golfcourse1.id )
item9 = Item.create!(name: "Snickers", image: "https://www.candywarehouse.com/item-images/127952-01_snickers-candy-bars-48-piece-box.jpg?resizeid=104&resizeh=1000&resizew=1000", price: 8.00, description: "Candy Bar", golf_course_id: golfcourse1.id )
item6 = Item.create!(name: "18 Holes", image: "", price: 75.00, description: "A Round of Golf With a Cart", golf_course_id: golfcourse1.id )
item10 = Item.create!(name: "Golf Lessons Gift Card", image: "https://www.expertlychosen.com/images/1273-golf-lesson-with-a-pga-pro.jpg?height=600&mode=crop&scale=both&width=800", price: 100.00, description: "Lessons by the Hour", golf_course_id: golfcourse1.id )
item11 = Item.create!(name: "Golf Lessons Gift Card", image: "https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/5/2019/01/Pro-v1-main.jpg", price: 100.00, description: "Premium Golf Balls", golf_course_id: golfcourse1.id )
item112 = Item.create!(name: "Tees", image: "https://www.gpencil.com/Merchant2/graphics/00000001/3498.jpg", price: 100.00, description: "Natural Wood Golf Tees", golf_course_id: golfcourse1.id )




cart1= Cart.create!(user_id: user1.id, total_price: 4.00, check_out: false )


cartItem1 = CartItem.create!(cart: cart1, item:item1, quantity: 1)

review1 = Review.create!(user_id: user1.id, golf_course_id: golfcourse1.id, title: "Amazing", body: "This course was fun, and the drinks kept coming!", date: "12/6/2020" )
review2 = Review.create!(user_id: user1.id, golf_course_id: golfcourse1.id, title: "Bad Weather TOO much snow", body: "This course was fun, and the drinks kept coming!", date: "08/9/2000" )
review3 = Review.create!(user_id: user1.id, golf_course_id: golfcourse1.id, title: "Horrible", body: "This course was fun, and the drinks kept coming!", date: "01/12/2015" )
