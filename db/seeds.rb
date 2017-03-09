# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ExtraOrder.destroy_all
Extra.destroy_all
Order.destroy_all
Basket.destroy_all
Producer.destroy_all
DeliveryPoint.destroy_all

Basket.create! ({
  size: "small",
  category: "fruits",
  price: 1290
  })
Basket.create! ({
  size: "medium",
  category: "fruits",
  price: 2090
  })
Basket.create! ({
  size: "large",
  category: "fruits",
  price: 2590
  })
Basket.create! ({
  size: "small",
  category: "vegetables",
  price: 1290
  })
Basket.create! ({
  size: "medium",
  category: "vegetables",
  price: 2090
  })
Basket.create! ({
  size: "large",
  category: "vegetables",
  price: 2590
  })
Basket.create! ({
  size: "small",
  category: "both",
  price: 1290
  })
Basket.create! ({
  size: "medium",
  category: "both",
  price: 2090
  })
Basket.create! ({
  size: "large",
  category: "both",
  price: 2590
  })


producer_1 = Producer.create!({
    name: "Peter Canolli",
    city: "Rio de Janeiro",
    phone: "(41) 9988 0733",
    email: "peter@peter.com",
    bio: "Gifted in researching spit-takes in Deltona, FL. Developed several new methods for analyzing junk food in Salisbury, MD. Practiced in the art of promoting Magic 8-Balls in the government sector.",
    remote_photo_url: "http://wp.production.patheos.com/blogs/thepangeablog/files/2011/12/Kurt-Profile-Image-Square-Brick-1024x1024.jpg"
  })


producer_2 = Producer.create!({
    name: "Deborah Blando",
    city: "Niterói",
    phone: "(41) 8899 0733",
    email: "deborah@deborah.com",
    bio: "Gifted in researching spit-takes in Deltona, FL. Developed several new methods for analyzing junk food in Salisbury, MD. Practiced in the art of promoting Magic 8-Balls in the government sector.",
    remote_photo_url: "https://s1.vagalume.com/deborah-blando/images/profile-bigw314.jpg"
  })

Extra.create!({
    name: "Olive Oil",
    price: 8.99,
    info: "30oz",
    category: "oils",
    producer_id: producer_1.id,
    remote_photo_url: "https://vitalvedaaus.files.wordpress.com/2016/10/olive-oil-wood.jpg"
  })

Extra.create!({
    name: "Whole wheat bread",
    price: 12.99,
    info: "With pumpking seeds - 500g",
    category: "bakery",
    producer_id: producer_2.id,
    remote_photo_url: "http://cdn2.veganbaking.net/2011/content/vegan-nine-grain-whole-wheat-bread.jpg"
  })

Extra.create!({
    name: "Free range eggs",
    price: 7.29,
    info: "Box with 12",
    category: "ingredients",
    producer_id: producer_1.id,
    remote_photo_url: "http://holmbush.farm/wp-content/uploads/2015/03/free-range-eggs-5.jpg"
  })

delivery_point_1 = DeliveryPoint.create!({
  name: "Zona Sul General Osario",
  address: "R. Prudente de Morais, 49 - Ipanema, Rio de Janeiro - RJ, 22420-040"
  })

delivery_point_2 = DeliveryPoint.create!({
  name: "Bossa Nova Mall",
  address: "Av. Alm. Silvio de Noronha, 365 - Centro, Rio de Janeiro - RJ, 20021-010"
  })

delivery_point_3 = DeliveryPoint.create!({
  name: "Botafogo Praia Shopping",
  address: "Praia de Botafogo, 400 - Botafogo, Rio de Janeiro - RJ, 22250-040"
  })

delivery_point_4 = DeliveryPoint.create!({
  name: "Shopping da Gavea",
  address: "R. Marquês de São Vicente, 52 - Gávea, Rio de Janeiro - RJ, 22451-041"
  })

delivery_point_5 = DeliveryPoint.create!({
  name: "Casa & Gourmet Shopping",
  address: "R. Gen. Severiano, 97 - Botafogo, Rio de Janeiro - RJ, 22290-040"
  })

delivery_point_6 = DeliveryPoint.create!({
  name: "Shopping Leblon",
  address: "Av. Afrânio de Melo Franco, 290 - Leblon, Rio de Janeiro - RJ, 22430-060"
  })

delivery_point_7 = DeliveryPoint.create!({
  name: "Rio Sul",
  address: "Rua Lauro Müller, 116 - Botafogo, Rio de Janeiro - RJ, 22290-160"
  })

delivery_point_8 = DeliveryPoint.create!({
  name: "Zona Sul Copacabana",
  address: "Av. Nossa Sra. de Copacabana, 936 - Copacabana, Rio de Janeiro - RJ, 22020-001"
  })

delivery_point_9 = DeliveryPoint.create!({
  name: "Zona Sul Humaita",
  address: "Rua Humaitá, 110 - Humaitá, Rio de Janeiro - RJ, 22261-170"
  })

delivery_point_10 = DeliveryPoint.create!({
  name: "Zona Sul Flamengo",
  address: "Rua Senador Vergueiro, 51 - Flamengo, Rio de Janeiro - RJ, 22230-000"
  })

delivery_point_11 = DeliveryPoint.create!({
  name: "Zona Sul Gavea",
  address: "Av. Rodrigo Otávio, 269 - Gávea, Rio de Janeiro - RJ, 22450-060"
  })

delivery_point_12 = DeliveryPoint.create!({
  name: "Extra Supermercado",
  address: "R. Gen. Olímpio Mourão Filho, 30 - São Conrado, Rio de Janeiro - RJ, 22610-020"
  })



