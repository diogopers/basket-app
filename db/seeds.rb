ExtraOrder.destroy_all
Extra.destroy_all
Order.destroy_all
Basket.destroy_all
Producer.destroy_all
DeliveryPoint.destroy_all

Basket.create! ({
  size: "small",
  category: "fruits",
  category_url: "fruits.jpg",
  price_cents: 1290,
  size_url: "size-s.png"

  })
Basket.create! ({
  size: "medium",
  category: "fruits",
  category_url: "fruits.jpg",
  price_cents: 2090,
  size_url: "size-m.png"

  })
Basket.create! ({
  size: "large",
  category: "fruits",
  category_url: "fruits.jpg",
  price_cents: 2590,
  size_url: "size-s.png"
  })

Basket.create! ({
  size: "small",
  category: "vegetables",
  category_url: "vegetables.jpg",
  price_cents: 1290,
  size_url: "size-g.png"
  })

Basket.create! ({
  size: "medium",
  category: "vegetables",
  category_url: "vegetables.jpg",
  price_cents: 2090,
  size_url: "size-m.png"
  })

Basket.create! ({
  size: "large",
  category: "vegetables",
  category_url: "vegetables.jpg",
  price_cents: 2590,
  size_url: "size-g.png"
  })

Basket.create! ({
  size: "small",
  category: "both",
  category_url: "fruitsvegetables.jpg",
  price_cents: 1290,
  size_url: "size-s.png"
  })

Basket.create! ({
  size: "medium",
  category: "both",
  category_url: "fruitsvegetables.jpg",
  size_url: "size-m.png",
  price_cents: 2090
  })

Basket.create! ({
  size: "large",
  category: "both",
  category_url: "fruitsvegetables.jpg",
  price_cents: 2590,
  size_url: "size-g.png"
  })


producer_1 = Producer.create!({
    name: "Peter Canolli",
    city: "Rio de Janeiro",
    phone: "(41) 9988 0733",
    email: "peter@peter.com",
    bio: " All of Peter Canolli chickens have access to organic pastures, where they spend their days clucking, strutting and pecking at bugs and earthworms. On rainy days, the chickens stay in the coop, but keeping them happy and healthy is his highest priority.",
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

producer_3 = Producer.create!({
    name: "Maria Machado",
    city: "Resende",
    phone: "(24) 8549 0712",
    email: "maria@maria.com",
    bio: "Gifted in researching spit-takes in Deltona, FL. Developed several new methods for analyzing junk food in Salisbury, MD. Practiced in the art of promoting Magic 8-Balls in the government sector.",
    remote_photo_url: "http://civileats.com/wp-content/uploads/2014/12/Leah_Penniman-e1417460891456-680x371edit.jpg"
  })

producer_4 = Producer.create!({
    name: "João Carlos",
    city: "Rio de Janeiro",
    phone: "(21) 7949 0739",
    email: "joao@carlos.com",
    bio: "Gifted in researching spit-takes in Deltona, FL. Developed several new methods for analyzing junk food in Salisbury, MD. Practiced in the art of promoting Magic 8-Balls in the government sector.",
    remote_photo_url: "http://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/2/28/3/FNM_040112-TTAH-028_s3x4.jpg.rend.hgtvcom.966.1288.jpeg"
  })

producer_5 = Producer.create!({
    name: "Ana Dantas",
    city: "Rio de Janeiro",
    phone: "(24) 9934 0712",
    email: "ana@ana.com",
    bio: "Gifted in researching spit-takes in Deltona, FL. Developed several new methods for analyzing junk food in Salisbury, MD. Practiced in the art of promoting Magic 8-Balls in the government sector.",
    remote_photo_url: "http://5pz91qmfi1-flywheel.netdna-ssl.com/wp-content/uploads/2015/04/Screen-Shot-2015-04-14-at-7.28.04-AM.jpg"
  })

producer_6 = Producer.create!({
    name: "Alberto Silva",
    city: "Niterói",
    phone: "(21) 9969 4292",
    email: "alberto@alberto.com",
    bio: "Gifted in researching spit-takes in Deltona, FL. Developed several new methods for analyzing junk food in Salisbury, MD. Practiced in the art of promoting Magic 8-Balls in the government sector.",
    remote_photo_url: "http://www.patissier.cz/data/userfiles/image/Markus%20Breier.JPG"
  })

producer_7 = Producer.create!({
    name: "Alaor Fernandes",
    city: "Miguel Pereira",
    phone: "(24) 8669 4122",
    email: "alaor@alaor.com",
    bio: "Gifted in researching spit-takes in Deltona, FL. Developed several new methods for analyzing junk food in Salisbury, MD. Practiced in the art of promoting Magic 8-Balls in the government sector.",
    remote_photo_url: "http://thebeautifulhumanrace.com/wp-content/uploads/2011/09/brazil-3.jpg"
  })

producer_8 = Producer.create!({
    name: "Miguel Monteiro",
    city: "Petrópolis",
    phone: "(24) 2433 2122",
    email: "miguel@miguel.com",
    bio: "Gifted in researching spit-takes in Deltona, FL. Developed several new methods for analyzing junk food in Salisbury, MD. Practiced in the art of promoting Magic 8-Balls in the government sector.",
    remote_photo_url: "https://i.models.com/mdx/i/2014/06/1_Philip_Huang_by_Idris_Ton.jpg"
  })

producer_9 = Producer.create!({
    name: "Francisca Alves",
    city: "Paraty",
    phone: "(24) 2455 9900",
    email: "francisca@francisca.com",
    bio: "Gifted in researching spit-takes in Deltona, FL. Developed several new methods for analyzing junk food in Salisbury, MD. Practiced in the art of promoting Magic 8-Balls in the government sector.",
    remote_photo_url: "https://gatasnegrasbrasileiras.files.wordpress.com/2013/06/dandara-batista-correia.jpg"
  })

producer_10 = Producer.create!({
    name: "Carla Franco",
    city: "Bambuí",
    phone: "(24) 2455 9900",
    email: "carla@carla.com",
    bio: "Gifted in researching spit-takes in Deltona, FL. Developed several new methods for analyzing junk food in Salisbury, MD. Practiced in the art of promoting Magic 8-Balls in the government sector.",
    remote_photo_url: "https://upload.wikimedia.org/wikipedia/commons/2/26/Allie_Mae_Burroughs_print.jpg"
  })

producer_11 = Producer.create!({
    name: "Nelson Aguillar",
    city: "Magé",
    phone: "(24) 9834 9900",
    email: "nelson@nelson.com",
    bio: "Gifted in researching spit-takes in Deltona, FL. Developed several new methods for analyzing junk food in Salisbury, MD. Practiced in the art of promoting Magic 8-Balls in the government sector.",
    remote_photo_url: "https://2dhnizrxqvv1awj231eodql1-wpengine.netdna-ssl.com/wp-content/uploads/2014/07/Gainesville-Portrait-And-Family-Photography-Photographer-Lucian-Badea-Gainesville-Florida-Tyler-685x1026-e1404227154535.jpg"
  })

Extra.create!({
    name: "Olive Oil",
    price_cents: 899,
    info: "30oz",
    category: "oils",
    producer_id: producer_1.id,
    remote_photo_url: "https://vitalvedaaus.files.wordpress.com/2016/10/olive-oil-wood.jpg"
  })

Extra.create!({
    name: "Whole wheat bread",
    price_cents: 1299,
    info: "With pumpking seeds - 500g",
    category: "bakery",
    producer_id: producer_2.id,
    remote_photo_url: "http://cdn2.veganbaking.net/2011/content/vegan-nine-grain-whole-wheat-bread.jpg"
  })

Extra.create!({
    name: "Free range eggs",
    price_cents: 729,
    info: "Box with 12",
    category: "ingredients",
    producer_id: producer_1.id,
    remote_photo_url: "http://holmbush.farm/wp-content/uploads/2015/03/free-range-eggs-5.jpg"
  })

Extra.create!({
    name: "Corn",
    price_cents: 549,
    info: "Pack with 5",
    category: "ingredients",
    producer_id: producer_3.id,
    remote_photo_url: "http://www.motherearthnews.com/~/media/Images/MEN/Editorial/Articles/Magazine%20Articles/1972/07-01/Grow%20Your%20Own%20Corn/Corn.jpg"
  })

Extra.create!({
    name: "Basil pesto",
    price_cents: 1099,
    info: "200g",
    category: "ingredients",
    producer_id: producer_3.id,
    remote_photo_url: "http://img.taste.com.au/KLBWt-i1/taste/2016/11/basil-pesto-31017-1.jpeg"
  })

Extra.create!({
    name: "Tomato sauce",
    price_cents: 699,
    info: "200g",
    category: "ingredients",
    producer_id: producer_3.id,
    remote_photo_url: "http://atmedia.imgix.net/ffe5106a684675f4fcfac7f4809f9a6599ecba9f?w=800&fit=max"
  })

Extra.create!({
    name: "Fettuccine pasta",
    price_cents: 999,
    info: "500g",
    category: "ingredients",
    producer_id: producer_4.id,
    remote_photo_url: "http://www.borgattis.com/wp-content/uploads/2014/08/Borgattis-Egg-Fettuccine-Pasta1.jpg"
  })

Extra.create!({
    name: "Potato gnocchi",
    price_cents: 1299,
    info: "500g",
    category: "ingredients",
    producer_id: producer_4.id,
    remote_photo_url: "http://www.seriouseats.com/assets_c/2012/06/20120626-211763-GFTues-GnocchiHowTo12-thumb-625xauto-251589.jpg"
  })

Extra.create!({
    name: "Hibiscus tea",
    price_cents: 1399,
    info: "1l",
    category: "beverages",
    producer_id: producer_5.id,
    remote_photo_url: "http://www.theteatalk.com/images/xD_hibiscus_flower_tea_sm.jpg.pagespeed.ic.7u1-KQwSZm.jpg"
  })

Extra.create!({
    name: "Croissants",
    price_cents: 1499,
    info: "500g",
    category: "bakery",
    producer_id: producer_6.id,
    remote_photo_url: "http://www.cabidecolorido.com.br/wp-content/uploads/2015/04/croissant_2089853b.jpg"
  })

Extra.create!({
    name: "Tapioca flour",
    price_cents: 1200,
    info: "1kg",
    category: "ingredients",
    producer_id: producer_7.id,
    remote_photo_url: "https://http2.mlstatic.com/farinha-de-tapioca-1-kg-promoco-veja--D_NQ_NP_569211-MLB20501989410_112015-F.jpg"
  })

Extra.create!({
    name: "Tapioca couscous",
    price_cents: 1000,
    info: "a full platter",
    category: "bakery",
    producer_id: producer_7.id,
    remote_photo_url: "http://brazigzag.com/wp-content/uploads/2013/04/cuscuz-de-tapioca-couscous-coconut-four-bars.jpg?x30735"
  })

Extra.create!({
    name: "Tapioca ice cream",
    price_cents: 1400,
    info: "1l",
    category: "beverages",
    producer_id: producer_7.id,
    remote_photo_url: "http://static.wixstatic.com/media/f48161_0e38897c984f43dc835d6f25e2cf3d2e.png/v1/fill/w_626,h_417/f48161_0e38897c984f43dc835d6f25e2cf3d2e.png"
  })

Extra.create!({
    name: "Chocolate chip cookies",
    price_cents: 800,
    info: "300g",
    category: "bakery",
    producer_id: producer_8.id,
    remote_photo_url: "http://images-gmi-pmc.edge-generalmills.com/f7b548e6-df46-49f9-a243-5ad6a1a080d6.jpg"
  })
Extra.create!({
    name: "White chocolate chip cookies",
    price_cents: 800,
    info: "300g",
    category: "bakery",
    producer_id: producer_8.id,
    remote_photo_url: "https://www.averiecooks.com/wp-content/uploads/2011/10/pboatmeal-18-665x403.jpg"
  })
Extra.create!({
    name: "Banana cachaça",
    price_cents: 2100,
    info: "700ml",
    category: "beverages",
    producer_id: producer_9.id,
    remote_photo_url: "https://assets.papodehomem.com.br/2017/02/24/20/56/54/b555a706-f168-4f10-8d5d-866614ef1f23/cachaca-jpg"
  })
Extra.create!({
    name: "Goat cheese",
    price_cents: 2000,
    info: "300g",
    category: "dairy",
    producer_id: producer_10.id,
    remote_photo_url: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2014/10/22/18/web-goats-cheese-RF-getty-c.jpg"
  })
Extra.create!({
    name: "Canastra cheese",
    price_cents: 3500,
    info: "500g",
    category: "dairy",
    producer_id: producer_10.id,
    remote_photo_url: "http://img.estadao.com.br/paladar/files/2013/11/produto-queijo-canastra.jpg"
  })
Extra.create!({
    name: "Coriander",
    price_cents: 200,
    info: "200g",
    category: "ingredients",
    producer_id: producer_11.id,
    remote_photo_url: "https://steptohealth.com/wp-content/uploads/2015/09/1-cilantro.jpg"
  })
Extra.create!({
    name: "Rosemary",
    price_cents: 200,
    info: "200g",
    category: "ingredients",
    producer_id: producer_11.id,
    remote_photo_url: "https://draxe.com/wp-content/uploads/2014/07/Rosemary-1-480x411.jpg"
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



