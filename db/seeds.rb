# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# producer_1 = Producer.new({
#     name: "Peter Canolli",
#     city: "Rio de Janeiro",
#     phone: "(41) 9988 0733",
#     email: "peter@peter.com",
#     bio: "Gifted in researching spit-takes in Deltona, FL. Developed several new methods for analyzing junk food in Salisbury, MD. Practiced in the art of promoting Magic 8-Balls in the government sector.",
#     remote_photo_url: "http://wp.production.patheos.com/blogs/thepangeablog/files/2011/12/Kurt-Profile-Image-Square-Brick-1024x1024.jpg"
#   })

# extra_1 = Extra.new({
#     name: "Olive Oil",
#     price: 8.99,
#     info: "30oz",
#     category: "oils",
#     producer_id: 1,
#     remote_photo_url: "https://vitalvedaaus.files.wordpress.com/2016/10/olive-oil-wood.jpg"
#   })

producer_2 = Producer.new({
    name: "Deborah Blando",
    city: "Niterói",
    phone: "(41) 8899 0733",
    email: "deborah@deborah.com",
    bio: "Gifted in researching spit-takes in Deltona, FL. Developed several new methods for analyzing junk food in Salisbury, MD. Practiced in the art of promoting Magic 8-Balls in the government sector.",
    remote_photo_url: "https://s1.vagalume.com/deborah-blando/images/profile-bigw314.jpg"
  })

extra_2 = Extra.new({
    name: "Whole wheat bread",
    price: 12.99,
    info: "With pumpking seeds - 500g",
    category: "bakery",
    producer_id: 2,
    remote_photo_url: "http://cdn2.veganbaking.net/2011/content/vegan-nine-grain-whole-wheat-bread.jpg"
  })

extra_3 = Extra.new({
    name: "Free range eggs",
    price: 7.29,
    info: "Box with 12",
    category: "ingredients",
    producer_id: 1,
    remote_photo_url: "http://holmbush.farm/wp-content/uploads/2015/03/free-range-eggs-5.jpg"
  })



producer_2.save
extra_2.save
extra_3.save


