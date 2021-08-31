# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying seeds"

Product.destroy_all
Category.destroy_all
Farm.destroy_all
User.destroy_all

User.create(
  first_name: "Katya",
  last_name: "Ueno",
  email: "katya@gmail.com",
  password: '123456',
  farmer: true
)

CATEGORIES = %w(Livestock Crops Dairy Vegetables Fish)

livestock = Category.create(name: CATEGORIES[0])
crops = Category.create(name: CATEGORIES[1])
diary = Category.create(name: CATEGORIES[2])
vegetables = Category.create(name: CATEGORIES[3])
fish = Category.create(name: CATEGORIES[4])


9.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: '123456',
    farmer: true
  )
end

10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: '123456'
  )
end


farm1 = Farm.create(
  name: "Spitalfields City Farm",
  location: "Buxton Street, London E1 5AR",
  description: "Spitalfields City Farm is a city farm in the London Borough of Tower Hamlets, a short distance from Brick Lane. The farm was opened in 1978 on a 1.3-acre wasteland site that was a former railway goods depot. Initially an allotment site, it expanded to house animals, and became a charity in 1980."
)
farm1.user = User.all[0]
farm1.save

farm2 = Farm.create(
  name: "Surrey Docks Farm",
  location: "Rotherhithe Street, South Wharf, London SE16 5ET",
  description: "Surrey Docks Farm is a working city farm in the heart of London. It occupies a 2.2-acre site on the south bank of the River Thames in Rotherhithe."
)
farm2.user = User.all[1]
farm2.save


farm3 = Farm.create(
  name: "Stepney City Farm",
  location: "Stepney Way, Stepney Green, London E1 3DG",
  description: "Stepney City Farm is a city farm in Stepney, London, England. It is situated on Stepney Way with its entrance on the roundabout leading onto Stepney High Street and Belgrave Street towards Limehouse."
)
farm3.user = User.all[2]
farm3.save

farm4 = Farm.create(
  name: "Vauxhall City Farm",
  location: "165 Tyers St, London SE11 5HS",
  description: "Vauxhall City Farm is a city farm located in Vauxhall in the London Borough of Lambeth. The farm is run as a charity focusing on education, youth work, animal care and horticulture and is a centre for Riding for the Disabled."
)
farm4.user = User.all[3]
farm4.save

farm5 = Farm.create(
  name: "Oasis Farm Waterloo",
  location: "18 Carlisle Ln, London SE1 7LG",
  description: "Vauxhall City Farm is a city farm located in Vauxhall in the London Borough of Lambeth. The farm is run as a charity focusing on education, youth work, animal care and horticulture and is a centre for Riding for the Disabled."
)
farm5.user = User.all[4]
farm5.save

farm6 = Farm.create(
  name: "Forty Hall Farm",
  location: "Forty Hall Farm, Enfield EN2 9HA",
  description: "Forty Hall Farm is an organic farm nestled on the outskirts of London. The farm is run by Capel Manor College, the only further education college in London."
)
farm6.user = User.all[5]
farm6.save

farm7 = Farm.create(
  name: "Newham City Farm",
  location: "Stansfeld Road, London E6 5LT",
  description: "One of London’s longest established city farms, Newham City Farm provides the local community with free access to animals in a countryside oasis which offers a unique learning experience. It is suitable for all ages but especially children, who love meeting our rare breeds and learning about all kinds of farm animal."
)
farm7.user = User.all[6]
farm7.save

farm8 = Farm.create(
  name: "Deen City Farm",
  location: "39 Windsor Ave, London SW19 2RR",
  description: "Deen City Farm is one of London’s oldest City Farms. Established in 1978 on a plot of land where the Phipps Bridge Estate now stands, Deen City Farm has educated the local community for almost 35 years."
)
farm8.user = User.all[7]
farm8.save

farm9 = Farm.create(
  name: "West Hampstead",
  location: "Iverson Rd, London NW6 1XF",
  description: "West Hampstead Farmers' Market brings you fresh Essex coast fish, free range and organic meat and poultry and dairy and coffee from Brinkworth Dairy. In season we have fresh game, Pippins Orchard Essex apples, asparagus and cherries. Look out for regulars Perry Court Farm and Eden Farm veg, Wild Country organics seasonal veg and leaves, Brambletye biodynamic juice, fruit, veg, eggs and more and Millets Farm juice. There's hot food for breakfast and lunch, seasonal herbs and flowers and very friendly, knowledgeable stall holders."
)
farm9.user = User.all[8]
farm9.save

farm10 = Farm.create(
  name: "Ealing Farmers",
  location: "Leeland Rd, London W13 9HH",
  description: "Ealing is a well-established farmers' market with lots of regulars who know their stall holders by name. Expect to find raw milk, fresh fish from the Dorset coast, heritage apples from Essex, Isle of Wight tomatoes, and much more."
)
farm10.user = User.all[9]
farm10.save

product1 = Product.create(
  name: "Barloco Blue cheese",
  description: "This is a moderately strong creamy blue cheese, slightly punchier than Fleet Valley Blue. It’s made from pasteurised milk, and is very finely veined, giving a smooth, consistent flavour throughout.",
  price: 15
)
product1.farm = farm1
product1.category = diary
product1.save

product2 = Product.create(
  name: "Carrick cheese",
  description: "A traditional handmade farmhouse cheese in a 500g wedge. Carrick has a deep, nutty and earthy flavour.  The aroma is rich and earthy, and the texture is firm and with a creamy finish. It will dry naturally with age.",
  price: 14
)
product2.farm = farm1
product2.category = diary
product2.save

product3 = Product.create(
  name: "Cheddar cheese",
  description: "Tangy, rich and with a satisfying bite, a traditional farmhouse cheddar, matured slowly in our cheese store for around 9 months. This cheese is made with unpasturised milk from our ethical dairy farm. It best consumed within 4 weeks.",
  price: 15
)
product3.farm = farm1
product3.category = diary
product3.save

product4 = Product.create(
  name: "Pure & Simple ice-cream",
  description: "An unflavoured traditional dairy ice cream.",
  price: 5
)
product4.farm = farm2
product4.category = diary
product4.save

product5 = Product.create(
  name: "Lemon Curd ice-cream",
  description: "With swirls of rich lemon curd it's refreshingly tasty!",
  price: 5.5
)
product5.farm = farm2
product5.category = diary
product5.save

product6 = Product.create(
  name: "Chocolate & Ginger ice-cream",
  description: "A rich, deep, satisfying chocolately treat.",
  price: 4.6
)
product6.farm = farm2
product6.category = diary
product6.save

product7 = Product.create(
  name: "Milk & More milk",
  description: "Organic semi skimmed milk from British farms we know and trust. Enjoy the natural creamy goodness of organic semi skimmed, which is non GM, high in calcium and lower in fat than whole milk.",
  price: 0.95
)
product7.farm = farm3
product7.category = diary
product7.save

product8 = Product.create(
  name: "Delamere Fresh Goats Milk",
  description: "Delamere's fresh goat’s milk is a delicious and creamy alternative to cow’s milk. A lot of people choose goat's milk because of the health benefits that are thought to come from drinking it.",
  price: 2.10
)
product8.farm = farm3
product8.category = diary
product8.save

product9 = Product.create(
  name: "Tom Parker Vitamin Enriched Whole Milk",
  description: "We love Tom Parker Creamery because their deliciously fresh-tasting, creamy dairy proves that happy cows make the best milk. This wholesome bottle of the white stuff comes from free-range, grass-fed British cows and is extra special because it’s enriched with Vitamin D3, Vitamin K2 and Magnesium, each one providing 25% of your recommended daily intake.",
  price: 1.30
)
product9.farm = farm3
product9.category = diary
product9.save

product10 = Product.create(
  name: "Summer Carp",
  description: "These fish are generally 1.25 to 2.25lb. These are ideal for stocking into pleasure fisheries or on-growing in a suitable stock pond.",
  price: 4.75
)
product10.farm = farm4
product10.category = fish
product10.save

product11 = Product.create(
  name: "Golden Rudd",
  description: "For adding a bit of colour to any fishery the Golden Rudd, like its blander relative is a fantastic sporting fish and great for filling the keep net when other fish are not so obliging.",
  price: 5.05
)
product11.farm = farm4
product11.category = fish
product11.save

product12 = Product.create(
  name: "Crucian Carp",
  description: "We originally sourced Crucians from two different lakes so that we had not only two different gene pools, but also we were very careful to make sure they were “true” Crucians and were not brown goldfish.",
  price: 5.23
)
product12.farm = farm4
product12.category = fish
product12.save

puts "Seeds have been created"
