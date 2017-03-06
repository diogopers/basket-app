# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


producer_1 = Producer.new({
    name: "Peter Canolli",
    city: "Rio de Janeiro",
    phone: "(41) 9988 0733",
    email: "peter@peter.com",
    bio: "Gifted in researching spit-takes in Deltona, FL. Developed several new methods for analyzing junk food in Salisbury, MD. Practiced in the art of promoting Magic 8-Balls in the government sector.",
    remote_photo_url: "http://wp.production.patheos.com/blogs/thepangeablog/files/2011/12/Kurt-Profile-Image-Square-Brick-1024x1024.jpg"
  })

extra_1 = Extra.new({
    name: "Olive Oil",
    price: 8.99,
    info: "30oz",
    category: "oils",
    producer_id: 1,
    remote_photo_url: "https://vitalvedaaus.files.wordpress.com/2016/10/olive-oil-wood.jpg"
  })



producer_1.save
extra_1.save


