# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Destroying seeds"
OrderProduct.destroy_all
Order.destroy_all
Product.destroy_all
FarmCategory.destroy_all
Category.destroy_all
Farm.destroy_all
User.destroy_all

def attach_photo(url, object, name)
  file = URI.open(url)
  object.photo.attach(io: file, filename: name, content_type: 'image/img')
end

#farmers

user1 = User.create(
  first_name: "Hafiz",
  last_name: "Shukri",
  email: "hafiz@gmail.com",
  password: '123456',
  farmer: true
)
url1 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584682/be-natural/Farmers/Spitalfields_City_Farmer_dzsbv2.jpg'
attach_photo(url1, user1, '1')

user2 = User.create(
  first_name: "Akeem",
  last_name: "Abadi",
  email: "akeem@gmail.com",
  password: '123456',
  farmer: true
)
url2 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584685/be-natural/Farmers/Surrey_Docks_Farmer_ifsmsa.jpg'
attach_photo(url2, user2, '2')

user3 = User.create(
  first_name: "Kiara",
  last_name: "Reddy",
  email: "kiara@gmail.com",
  password: '123456',
  farmer: true
)
url3 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584682/be-natural/Farmers/Stepney_City_Farmer_gsmmnn.jpg'
attach_photo(url3, user3, '3')

user4 = User.create(
  first_name: "Prisha",
  last_name: "Khatri",
  email: "prisha@gmail.com",
  password: '123456',
  farmer: true
)
url4 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584683/be-natural/Farmers/Vauxhall_City_Farmer_tdiype.jpg'
attach_photo(url4, user4, '4')

user5 = User.create(
  first_name: "Chiumbo",
  last_name: "Bankole",
  email: "chiumbo@gmail.com",
  password: '123456',
  farmer: true
)
url5 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584682/be-natural/Farmers/Oasis_Farmer_Waterloo_qvycj0.jpg'
attach_photo(url5, user5, '5')

user6 = User.create(
  first_name: "Sai",
  last_name: "Kumar",
  email: "chiumbo@gmail.com",
  password: '123456',
  farmer: true
)
url6 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584684/be-natural/Farmers/Forty_Hall_Farmer_tdf3ba.jpg'
attach_photo(url6, user6, '6')

user7 = User.create(
  first_name: "Emilio",
  last_name: "Pereira",
  email: "emilio@gmail.com",
  password: '123456',
  farmer: true
)
url7 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584682/be-natural/Farmers/Newham_City_Farmer_klf6yb.jpg'
attach_photo(url7, user7, '7')

user8 = User.create(
  first_name: "James",
  last_name: "Brown",
  email: "james@gmail.com",
  password: '123456',
  farmer: true
)
url8 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584682/be-natural/Farmers/Deen_City_Farmer_ehlv6j.jpg'
attach_photo(url8, user8, '8')

user9 = User.create(
  first_name: "Thomas",
  last_name: "Taylor",
  email: "thomas@gmail.com",
  password: '123456',
  farmer: true
)
url9 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584682/be-natural/Farmers/West_Hamstead_Farmer_ztnbx3.jpg'
attach_photo(url9, user9, '9')

user10 = User.create(
  first_name: "Samuel",
  last_name: "Perez",
  email: "samuel@gmail.com",
  password: '123456',
  farmer: true
)
url10 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584684/be-natural/Farmers/Ealing_Farmer_dkf5i0.jpg'
attach_photo(url10, user10, '10')

# ordinary_users

user11 = User.create(
  first_name: "Samantha",
  last_name: "Campbell",
  email: "samantha@gmail.com",
  password: '123456',
  farmer: false
)
url11 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584703/be-natural/Users/christopher-campbell-rDEOVtE7vOs-unsplash_h3rofb.jpg'
attach_photo(url11, user11, '11')


user12 = User.create(
  first_name: "John",
  last_name: "Green",
  email: "john@gmail.com",
  password: '123456',
  farmer: false
)
url12 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584705/be-natural/Users/mubariz-mehdizadeh-t3zrEm88ehc-unsplash_zqxfeb.jpg'
attach_photo(url12, user12, '12')

CATEGORIES = %w(Meat Crops Dairy Vegetables Fish Fruit Wine)

meat = Category.create(name: CATEGORIES[0])
crops = Category.create(name: CATEGORIES[1])
dairy = Category.create(name: CATEGORIES[2])
vegetables = Category.create(name: CATEGORIES[3])
fish = Category.create(name: CATEGORIES[4])
fruits = Category.create(name: CATEGORIES[5])
wine = Category.create(name: CATEGORIES[6])

farm1 = Farm.create(
  name: "Spitalfields City Farm",
  location: "Buxton Street, London E1 5AR",
  description: "Spitalfields City Farm is a city farm in the London Borough of Tower Hamlets, a short distance from Brick Lane. The farm was opened in 1978 on a 1.3-acre wasteland site that was a former railway goods depot. Initially an allotment site, it expanded to house animals, and became a charity in 1980."
)
farm1.user = User.all[0]
farm1.save
url13 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584729/be-natural/Farms/Spitalfields_City_Farm_vbm7c3.jpg'
attach_photo(url13, farm1, '13')

farm2 = Farm.create(
  name: "Surrey Docks Farm",
  location: "Rotherhithe Street, South Wharf, London SE16 5ET",
  description: "Surrey Docks Farm is a working city farm in the heart of London. It occupies a 2.2-acre site on the south bank of the River Thames in Rotherhithe."
)
farm2.user = User.all[1]
farm2.save
url14 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584728/be-natural/Farms/Surrey_Docks_Farm_jzw9ci.jpg'
attach_photo(url14, farm2, '14')


farm3 = Farm.create(
  name: "Stepney City Farm",
  location: "Stepney Way, Stepney Green, London E1 3DG",
  description: "Stepney City Farm is a city farm in Stepney, London, England. It is situated on Stepney Way with its entrance on the roundabout leading onto Stepney High Street and Belgrave Street towards Limehouse."
)
farm3.user = User.all[2]
farm3.save
url15 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584729/be-natural/Farms/Stepney_City_Farm_opmdq6.jpg'
attach_photo(url15, farm3, '15')

farm4 = Farm.create(
  name: "Vauxhall City Farm",
  location: "165 Tyers St, London SE11 5HS",
  description: "Vauxhall City Farm is a city farm located in Vauxhall in the London Borough of Lambeth. The farm is run as a charity focusing on education, youth work, animal care and horticulture and is a centre for Riding for the Disabled."
)
farm4.user = User.all[3]
farm4.save
url16 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584729/be-natural/Farms/Vauxhall_City_Farm_vcdfhf.jpg'
attach_photo(url16, farm4, '16')

farm5 = Farm.create(
  name: "Oasis Farm Waterloo",
  location: "18 Carlisle Ln, London SE1 7LG",
  description: "We have transformed a strip of wasteland into a flourishing community resource and a haven for nature, where we learn to care for ourselves, others, plants, animals and the environment."
)
farm5.user = User.all[4]
farm5.save
url17 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584727/be-natural/Farms/Oasis_Farm_Waterloo_u05bhz.jpg'
attach_photo(url17, farm5, '17')

farm6 = Farm.create(
  name: "Forty Hall Farm",
  location: "Forty Hall Farm, Enfield EN2 9HA",
  description: "Forty Hall Farm is an organic farm nestled on the outskirts of London. The farm is run by Capel Manor College, the only further education college in London."
)
farm6.user = User.all[5]
farm6.save
url18 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584728/be-natural/Farms/Forty_Hall_Farm_yo7jkf.jpg'
attach_photo(url18, farm6, '18')

farm7 = Farm.create(
  name: "Newham City Farm",
  location: "Stansfeld Road, London E6 5LT",
  description: "One of London’s longest established city farms, Newham City Farm provides the local community with free access to animals in a countryside oasis which offers a unique learning experience. It is suitable for all ages but especially children, who love meeting our rare breeds and learning about all kinds of farm animal."
)
farm7.user = User.all[6]
farm7.save
url19 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584728/be-natural/Farms/Newham_City_Farm_u36kjz.jpg'
attach_photo(url19, farm7, '19')

farm8 = Farm.create(
  name: "Deen City Farm",
  location: "39 Windsor Ave, London SW19 2RR",
  description: "Deen City Farm is one of London’s oldest City Farms. Established in 1978 on a plot of land where the Phipps Bridge Estate now stands, Deen City Farm has educated the local community for almost 35 years."
)
farm8.user = User.all[7]
farm8.save
url20 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584728/be-natural/Farms/Deen_City_Farm_mnvfye.jpg'
attach_photo(url20, farm8, '20')

farm9 = Farm.create(
  name: "West Hampstead",
  location: "Iverson Rd, London NW6 1XF",
  description: "West Hampstead Farmers' Market brings you fresh Essex coast fish, free range and organic meat and poultry and dairy and coffee from Brinkworth Dairy. In season we have fresh game, Pippins Orchard Essex apples, asparagus and cherries. Look out for regulars Perry Court Farm and Eden Farm veg, Wild Country organics seasonal veg and leaves, Brambletye biodynamic juice, fruit, veg, eggs and more and Millets Farm juice. There's hot food for breakfast and lunch, seasonal herbs and flowers and very friendly, knowledgeable stall holders."
)
farm9.user = User.all[8]
farm9.save
url21 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584727/be-natural/Farms/West_Hampstead_ouxugi.jpg'
attach_photo(url21, farm9, '21')

farm10 = Farm.create(
  name: "Ealing Farmers",
  location: "Leeland Rd, London W13 9HH",
  description: "Ealing is a well-established farmers' market with lots of regulars who know their stall holders by name. Expect to find raw milk, fresh fish from the Dorset coast, heritage apples from Essex, Isle of Wight tomatoes, and much more."
)
farm10.user = User.all[9]
farm10.save
url22 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630584727/be-natural/Farms/Ealing_Farm_gryibr.jpg'
attach_photo(url22, farm10, '22')

product1 = Product.create(
  name: "Barloco Blue cheese",
  description: "This is a moderately strong creamy blue cheese, slightly punchier than Fleet Valley Blue. It’s made from pasteurised milk, and is very finely veined, giving a smooth, consistent flavour throughout.",
  price: 15
)
product1.farm = farm1
product1.category = dairy
product1.save
url23 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578039/be-natural/Spitalfields%20City%20Farm/Spitalfields_City_Farm_Dairy_1_Barloco_Blue_cheese_u39nim.jpg'
attach_photo(url23, product1, '23')

product2 = Product.create(
  name: "Carrick cheese",
  description: "A traditional handmade farmhouse cheese in a 500g wedge. Carrick has a deep, nutty and earthy flavour.  The aroma is rich and earthy, and the texture is firm and with a creamy finish. It will dry naturally with age.",
  price: 5.00
)
product2.farm = farm1
product2.category = dairy
product2.save
url24 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578039/be-natural/Spitalfields%20City%20Farm/Spitalfields_City_Farm_Dairy_2_Carrick_cheese_rgd8ku.jpg'
attach_photo(url24, product2, '24')

product3 = Product.create(
  name: "Cheddar cheese",
  description: "Tangy, rich and with a satisfying bite, a traditional farmhouse cheddar, matured slowly in our cheese store for around 9 months. This cheese is made with unpasturised milk from our ethical dairy farm. It best consumed within 4 weeks.",
  price: 4.00
)
product3.farm = farm1
product3.category = dairy
product3.save
url25 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578039/be-natural/Spitalfields%20City%20Farm/Spitalfields_City_Farm_Dairy_3_Cheddar_cheese_gbmblf.jpg'
attach_photo(url25, product3, '25')

farm_category1 = FarmCategory.create(category: dairy, farm: farm1)

product4 = Product.create(
  name: "Organic Cauliflower",
  description: "Our cauliflowers come leaves on, which have a flavour somewhere between cauliflower and sweet cabbage, enjoy these boiled for a few minutes or roasted with olive oil.",
  price: 3.00
)
product4.farm = farm1
product4.category = vegetables
product4.save
url26 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578039/be-natural/Spitalfields%20City%20Farm/Spitalfields_City_Farm_Vegetables_1_Organic_Cauliflower_j1nkvu.jpg'
attach_photo(url26, product4, '26')

product5 = Product.create(
  name: "Organic British Artichoke",
  description: "To prepare your Artichoke, remove all the tough outer leaves and the fibrous choke in the centre, rub with lemon and serve with a meze of Mediterranean dishes.",
  price: 2.90
)
product5.farm = farm1
product5.category = vegetables
product5.save
url27 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578040/be-natural/Spitalfields%20City%20Farm/Spitalfields_City_Farm_Vegetables_2_Organic_British_Artichoke_y1qoy1.jpg'
attach_photo(url27, product5, '27')

product6 = Product.create(
  name: "Organic Baby Courgette Flowers",
  description: "Make the most of these British summer delights and snap them up fast! Only available for a few weeks every summer these courgette flowers are beautiful stuffed with soft cheese, herbs and deep fried.",
  price: 5.40
)
product6.farm = farm1
product6.category = vegetables
product6.save
url28 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578039/be-natural/Spitalfields%20City%20Farm/Spitalfields_City_Farm_Vegetables_3_Organic_Baby_Courgette_Flowers_nxqtvq.jpg'
attach_photo(url28, product6, '28')

farm_category2 = FarmCategory.create(category: vegetables, farm: farm1)

product7 = Product.create(
  name: "Centre Cut Trout Fillet",
  description: "Sustainably farmed in Hampshire. A premium cut of trout.",
  price: 15.20
)
product7.farm = farm2
product7.category = fish
product7.save
url29 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578262/be-natural/Surrey%20Docks%20Farm/Surrey_Docks_Farm_Fish_1_Centre_Cut_Trout_Fillet_as43hn.jpg'
attach_photo(url29, product7, '29')

product8 = Product.create(
  name: "Coho Salmon Fillets",
  description: "Known for its orange-red flesh, delicate flavour and firm texture. It is also the richest in Omega 3 of all our salmons.",
  price: 8.90
)
product8.farm = farm2
product8.category = fish
product8.save
url30 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578261/be-natural/Surrey%20Docks%20Farm/Surrey_Docks_Farm_Fish_2_Coho_Salmon_Fillets_vpmnpq.jpg'
attach_photo(url30, product8, '30')

product9 = Product.create(
  name: "Sea Bass",
  description: "Mainly sourced from smaller day boats across the South Coast from Sussex all the way through to Cornwall, we also source our white fish and premium smoked haddock from Peterhead in Scotland. Delicious roasted or grilled with a butter, lemon & parsley sauce.",
  price: 6.40
)
product9.farm = farm2
product9.category = fish
product9.save
url31 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578261/be-natural/Surrey%20Docks%20Farm/Surrey_Docks_Farm_Fish_3_Sea_Bass_rd3frm.jpg'
attach_photo(url31, product9, '31')

farm_category3 = FarmCategory.create(category: fish, farm: farm2)

product10 = Product.create(
  name: "Organic Sirloin Steak",
  description: "Certified 100% pasture fed by the Pasture for Life and organic by the Soil Association. All our beef is dry aged on the bone for 30 days, aged for tenderness & flavour.",
  price: 9.20
)
product10.farm = farm2
product10.category = meat
product10.save
url32 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578262/be-natural/Surrey%20Docks%20Farm/Surrey_Docks_Farm_Meat_1_Organic_Sirloin_Steak_u2c2yq.jpg'
attach_photo(url32, product10, '32')

product11 = Product.create(
  name: "Organic Rump Steak",
  description: "Certified 100% pasture fed by the Pasture for Life and organic by the Soil Association. All our beef is dry aged on the bone for 30 days, aged for tenderness & flavour.",
  price: 9.10
)
product11.farm = farm2
product11.category = meat
product11.save
url33 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578261/be-natural/Surrey%20Docks%20Farm/Surrey_Docks_Farm_Meat_2_Organic_Rump_Steak_andgtq.jpg'
attach_photo(url33, product11, '33')

product12 = Product.create(
  name: "Pasture Raised Whole Chicken",
  description: "These chickens live in small flocks. They forage on grasses and herbs across Sladesdown Farms Devon pastures. We believe a natural habitat and diet makes these chickens taste even better.",
  price: 11.10
)
product12.farm = farm2
product12.category = meat
product12.save
url34 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578261/be-natural/Surrey%20Docks%20Farm/Surrey_Docks_Farm_Meat_3_Pasture_Raised_Whole_Chicken_ncv2ps.jpg'
attach_photo(url34, product12, '34')

farm_category4 = FarmCategory.create(category: meat, farm: farm2)

product13 = Product.create(
  name: "Organic True Spinach",
  description: "True Spinach is more delicate than perpetual spinach; it is smaller, sweeter and juicier, making it lovely used in salads or cooked.",
  price: 2.40
)
product13.farm = farm3
product13.category = vegetables
product13.save
url35 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578201/be-natural/Stepney%20City%20Farm/Stepney_City_Farm_Vegetables_1_Organic_True_Spinach_gwmzby.jpg'
attach_photo(url35, product13, '35')

product14 = Product.create(
  name: "Organic Rhubarb",
  description: "We love growing rhubarb; it's a refreshing change from winter roots, and grows vigorously at a time when English fields are otherwise quite bare. The variety is Timperley Early, with tender, juicy stalks and tart flavour. Unlike the bright pink ‘forced’ rhubarb you’ll find in most supermarkets, our rhubarb is field-grown, its blush-pink stalks tinged with green.",
  price: 4.20
)
product14.farm = farm3
product14.category = vegetables
product14.save
url36 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578204/be-natural/Stepney%20City%20Farm/Stepney_City_Farm_Vegetables_2_Organic_Rhubarb_grnmpo.jpg'
attach_photo(url36, product14, '36')

product15 = Product.create(
  name: "Organic Bunched Beetroot",
  description: "Dazzling red-purple organic beetroot puts a smile on the face and a spring in the step – there are plenty of ways to enjoy the health benefits of this vibrant root vegetable.",
  price: 3.20
)
product15.farm = farm3
product15.category = vegetables
product15.save
url37 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578204/be-natural/Stepney%20City%20Farm/Stepney_City_Farm_Vegetables_3_Organic_Bunched_Beetroot_l5zog2.jpg'
attach_photo(url37, product15, '37')

farm_category5 = FarmCategory.create(category: vegetables, farm: farm3)

product16 = Product.create(
  name: "Strawberries",
  description: "Our Strawberries are bursting with the flavour of British Summertime. Grown & hand-picked with care by the team. We farm responsibly to encourage biodiversity & produce fruit with a sense of place. This is a Celebration of Seasonality!",
  price: 3.10
)
product16.farm = farm3
product16.category = fruits
product16.save
url38 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578202/be-natural/Stepney%20City%20Farm/Stepney_City_Farm_Fruits_1_Strawberries_npxu3i.jpg'
attach_photo(url38, product16, '38')

product17 = Product.create(
  name: "Organic Blueberries",
  description: "Organically grown blueberries - sourced locally during the summer months, moving further afield out of peak season.",
  price: 2.80
)
product17.farm = farm3
product17.category = fruits
product17.save
url39 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578207/be-natural/Stepney%20City%20Farm/Stepney_City_Farm_Fruits_2_Organic_Blueberries_elbfsi.jpg'
attach_photo(url39, product17, '39')

product18 = Product.create(
  name: "Organic Raspberries",
  description: "Organic raspberries, produced with nutrients from the soil and plenty of care from our dedicated growers. Sweet, juicy and aromatic, they're ideal for desserts or snacks.",
  price: 2.80
)
product18.farm = farm3
product18.category = fruits
product18.save
url40 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578204/be-natural/Stepney%20City%20Farm/Stepney_City_Farm_Fruits_3_Organic_Raspberries_suqwju.jpg'
attach_photo(url40, product18, '40')

farm_category6 = FarmCategory.create(category: fruits, farm: farm3)

product19 = Product.create(
  name: "Organic Wheat Grain",
  description: "Organic Wheat Grain is a traditional bakers grain of choice.  It has a rich, buttery flavour and makes reliable bakes over and over again.",
  price: 2.70
)
product19.farm = farm4
product19.category = crops
product19.save
url41 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578285/be-natural/Vauxhall%20City%20Farm/Vauxhall_City_Farm_Crops_1_Organic_Wheat_Grain_x1npx9.jpg'
attach_photo(url41, product19, '41')

product20 = Product.create(
  name: "Wholegrain Wheat Flour",
  description: "Smooth wholegrain wheat flour is a popular ingredient in the preparation of buns, croissants, cakes, waffles, donuts, pancakes, muffins, cookies and other dishes. It is suitable for thickening soups or sauces and can be combined with other types of wheat and non-wheat flour.",
  price: 1.40
)
product20.farm = farm4
product20.category = crops
product20.save
url42 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578286/be-natural/Vauxhall%20City%20Farm/Vauxhall_City_Farm_Crops_2_Wholegrain_Wheat_Flour_kmkwmv.jpg'
attach_photo(url42, product20, '42')

product21 = Product.create(
  name: "Organic Pearl Barley",
  description: "Pearl barley has a distinctive texture and unique, nutty taste. It holds up well during cooking, and absorbs the flavour of the cooking liquid.",
  price: 2.70
)
product21.farm = farm4
product21.category = crops
product21.save
url43 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578284/be-natural/Vauxhall%20City%20Farm/Vauxhall_City_Farm_Crops_3_Wholegrain_Wheat_Flour_whnjxp.jpg'
attach_photo(url43, product21, '43')

farm_category7 = FarmCategory.create(category: crops, farm: farm4)

product22 = Product.create(
  name: "Organic Peaches",
  description: "A lovely, sweet flat peach with almond overtones. These peaches will need ripening at home to bring out their best and sweetest flavour.",
  price: 3.20
)
product22.farm = farm4
product22.category = fruits
product22.save
url44 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578285/be-natural/Vauxhall%20City%20Farm/Vauxhall_City_Farm_Fruits_1_Organic_Peaches_pjwack.jpg'
attach_photo(url44, product22, '44')


product23 = Product.create(
  name: "Organic Nectarines",
  description: "These nectarines are delicous once ripened. They are organic too, so no nasty pesticides.",
  price: 3.50
)
product23.farm = farm4
product23.category = fruits
product23.save
url45 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578285/be-natural/Vauxhall%20City%20Farm/Vauxhall_City_Farm_Fruits_2_Organic_Nectarines_iqi4ht.jpg'
attach_photo(url45, product23, '45')

product24 = Product.create(
  name: "English Cox Apples",
  description: "The classic English apple, sweet with a complex flavour and delicious bite. We found the these Cox's to be sweeter than any other we've tried.",
  price: 2.90
)
product24.farm = farm4
product24.category = fruits
product24.save
url46 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578285/be-natural/Vauxhall%20City%20Farm/Vauxhall_City_Farm_Fruits_3_English_Cox_Apples_ct277e.jpg'
attach_photo(url46, product24, '46')

farm_category8 = FarmCategory.create(category: fruits, farm: farm4)

product25 = Product.create(
  name: "Organic Bunched Carrots",
  description: "These super sweet carrots are grown in healthy nutritious soils, giving them a juicy, healthy crunch that we can't get enough of.",
  price: 5.20
)
product25.farm = farm5
product25.category = vegetables
product25.save
url47 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577872/be-natural/Oasis%20Farm%20Waterloo/Oasis_Farm_Waterloo_Vegetables_1_Organic_Bunched_Carrots_avuoga.jpg'
attach_photo(url47, product25, '47')

product26 = Product.create(
  name: "Organic Large Potatoes",
  description: "These potatoes will be either Kelly or Cara variety, both of which are great for mashing, roasting, baking and chipping.",
  price: 2.20
)
product26.farm = farm5
product26.category = vegetables
product26.save
url48 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577872/be-natural/Oasis%20Farm%20Waterloo/Oasis_Farm_Waterloo_Vegetables_2_Organic_Large_Potatoes_m1qzb6.jpg'
attach_photo(url48, product26, '48')

product27 = Product.create(
  name: "Organic Red Onions",
  description: "Eaten raw, red onions tend to be strong flavoured and biting; cooking caramelises the juices and mellows the flavour.",
  price: 1.90
)
product27.farm = farm5
product27.category = vegetables
product27.save
url49 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577872/be-natural/Oasis%20Farm%20Waterloo/Oasis_Farm_Waterloo_Vegetables_3_Organic_Red_Onions_dhrvj3.jpg'
attach_photo(url49, product27, '49')

farm_category9 = FarmCategory.create(category: vegetables, farm: farm5)

product28 = Product.create(
  name: "Organic unroasted buckwheat",
  description: "The distinctive, musky flavour of buckwheat works well in stuffings, pilaffs, and as a substitute for rice with stews.",
  price: 2.10
)
product28.farm = farm5
product28.category = crops
product28.save
url50 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577872/be-natural/Oasis%20Farm%20Waterloo/Oasis_Farm_Waterloo_Crops_1_Organic_unroasted_buckwheat_olo9p0.jpg'
attach_photo(url50, product28, '50')

product29 = Product.create(
  name: "Organic Bulgur Wheat",
  description: "This Organic Bulgur Wheat is made by removing the outer layer from wheat, which is then steamed, dried and cracked.",
  price: 1.90
)
product29.farm = farm5
product29.category = crops
product29.save
url51 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577872/be-natural/Oasis%20Farm%20Waterloo/Oasis_Farm_Waterloo_Crops_2_Organic_Bulgur_Wheat_es6qwn.jpg'
attach_photo(url51, product29, '51')

product30 = Product.create(
  name: "Organic Wholemeal Rye Flour",
  description: "A distinctively tangy stoneground ancient grain flour for making close-textured breads, cakes and biscuits.",
  price: 2.20
)
product30.farm = farm5
product30.category = crops
product30.save
url52 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577872/be-natural/Oasis%20Farm%20Waterloo/Oasis_Farm_Waterloo_Crops_2_Organic_Wholemeal_Rye_Flour_go8utz.jpg'
attach_photo(url52, product30, '52')

farm_category10 = FarmCategory.create(category: crops, farm: farm5)

product31 = Product.create(
  name: "Organic Spatchcock Chicken",
  description: "Our birds enjoy a relaxed and natural upbringing with acres and acres of pastures free of any pesticides to roam across and forage. A wholesome diet of insects and grubs hiding in the ground and meadow grasses and herbs are supplemented by GM free organic corn to ensure that the birds are kept healthy,",
  price: 11.40
)
product31.farm = farm6
product31.category = meat
product31.save
url53 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577840/be-natural/Forty%20Hall%20Farm/Forty_Hall_Farm_Meat_1_Organic_Spatchcock_Chicken_jgdvxc.jpg'
attach_photo(url53, product31, '53')

product32 = Product.create(
  name: "Rack of Lamb",
  description: "Taken from the lamb ribs, the rack is very popular as a great, impressive all rounder, that’s super quick to cook and easy to achieve perfectly crisp skin and tender, melt-in-the-mouth flesh. The cutlets are individual rib steaks taken from the rack and look beautiful on the plate. Best for: quick roasting or grilling",
  price: 8.70
)
product32.farm = farm6
product32.category = meat
product32.save
url54 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577840/be-natural/Forty%20Hall%20Farm/Forty_Hall_Farm_Meat_2_Rack_of_Lamb_unjleo.jpg'
attach_photo(url54, product32, '54')

product33 = Product.create(
  name: "Pasture Raised Whole Duck",
  description: "These ducks live in small flocks of two hundred. They forage on grasses and herbs across pastures. We believe a natural habitat and diet makes these ducks taste even better. They are then hung for a week to develop their flavour and texture",
  price: 21.60
)
product33.farm = farm6
product33.category = meat
product33.save
url55 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577840/be-natural/Forty%20Hall%20Farm/Forty_Hall_Farm_Meat_3_Pasture_Raised_Whole_Duck_idzsl9.jpg'
attach_photo(url55, product33, '55')

farm_category11 = FarmCategory.create(category: meat, farm: farm6)

product34 = Product.create(
  name: "Organic Tenderstem Broccoli",
  description: "Until recently Tenderstem broccoli was only grown overseas, but the UK has perfect conditions for growing this tasty brassica and this has now become a local treat.",
  price: 3.90
)
product34.farm = farm6
product34.category = vegetables
product34.save
url56 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577840/be-natural/Forty%20Hall%20Farm/Forty_Hall_Farm_Vegetables_1_Organic_Tenderstem_Broccoli_fhc1yr.jpg'
attach_photo(url56, product34, '56')

product35 = Product.create(
  name: "Organic Broccoli",
  description: "Organic broccoli offers a wealth of vitamins and antioxidants. However, these can be destroyed if given the old-fashioned (over-boiling) treatment - a brief steaming of the florets does the trick, or pop in a covered bowl in the microwave with a spoonful of water.",
  price: 3.60
)
product35.farm = farm6
product35.category = vegetables
product35.save
url57 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577840/be-natural/Forty%20Hall%20Farm/Forty_Hall_Farm_Vegetables_2_Organic_Broccoli_swlgs7.jpg'
attach_photo(url57, product35, '57')

product36 = Product.create(
  name: "Organic Courgettes",
  description: "The courgette is a small narrow breed of squash or pumpkin. Modern Green Courgette varieties like the 'Ambassador' and 'Defender', are distant derivatives of the original squashes that would have originated in the Americas. They are believed to have been cultivated there for between five and ten thousand years, and were brought over to Europe following the discovery of the new world. The word 'Squash', is an abbreviation for the North American Indian word 'askutasquash', meaning 'eaten raw or uncooked'. Here in the UK, courgettes now grow prolifically in the peak summer months, but the season can often end suddenly in September. We see them as such a kitchen essential we have them on the shop all year round, buying these quality courgettes from Spain when not from the UK.",
  price: 2.10
)
product36.farm = farm6
product36.category = vegetables
product36.save
url58 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577840/be-natural/Forty%20Hall%20Farm/Forty_Hall_Farm_Vegetables_3_Organic_Courgettes_wwqejm.jpg'
attach_photo(url58, product36, '58')

farm_category12 = FarmCategory.create(category: vegetables, farm: farm6)

product37 = Product.create(
  name: "Domaine Cavalier Rouge",
  description: "VINTAGE – 2019 VARIETY – Cabernet Sauvignon, Syrah and Merlot ABV – 12.5%",
  price: 13.20
)
product37.farm = farm7
product37.category = wine
product37.save
url59 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577855/be-natural/Newham%20City%20Farm/Newham_City_Farm_Wine_1_Domaine_Cavalier_Rouge_qlmevu.jpg'
attach_photo(url59, product37, '59')

product38 = Product.create(
  name: "Tinto Qvinto Arrio",
  description: "VINTAGE – 2019 VARIETY – Tempranillo ABV – 12.5%",
  price: 11.20
)
product38.farm = farm7
product38.category = wine
product38.save
url60 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577855/be-natural/Newham%20City%20Farm/Newham_City_Farm_Wine_2_Tinto_Qvinto_Arrio_s1olsj.jpg'
attach_photo(url60, product38, '60')

product39 = Product.create(
  name: "Mariana Red",
  description: "VINTAGE – 2019 VARIETY – Touriga Nacional 40%, Aragonez 30%, Alicante Bouschet 20%, Trincadeira 10% ABV – 12.5%",
  price: 10.20
)
product39.farm = farm7
product39.category = wine
product39.save
url61 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577855/be-natural/Newham%20City%20Farm/Newham_City_Farm_Wine_3_Mariana_Red_ck59xd.jpg'
attach_photo(url61, product39, '61')

farm_category13 = FarmCategory.create(category: wine, farm: farm7)

product40 = Product.create(
  name: "Organic Chicken Breast Mini Fillets",
  description: "Our birds enjoy a relaxed and natural upbringing with acres and acres of luscious pastures free of any pesticides to roam across and forage. A wholesome diet of insects and grubs hiding in the ground and meadow grasses and herbs are supplemented by GM free organic corn to ensure that the birds are kept healthy.",
  price: 10.50
)
product40.farm = farm7
product40.category = meat
product40.save
url62 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577855/be-natural/Newham%20City%20Farm/Newham_City_Farm_Meat_1_Organic_Chicken_Breast_Mini_Fillets_v3wwq5.jpg'
attach_photo(url62, product40, '62')

product41 = Product.create(
  name: "Dry Cured Oak Smoked Streaky Bacon",
  description: "Our bacon is dry cured by hand in very small batches. The bacon is cured in a simple mix of salt and muscavado sugar and then air dried for a week before gently smoking over smouldering oak chips. Our bacon is about as far as you can get from a a mass produced product. The dry curing, drying and smoking all help to remove excess moisture from the bacon helping it to crisp up beautifully in the pan.",
  price: 5.20
)
product41.farm = farm7
product41.category = meat
product41.save
url63 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577855/be-natural/Newham%20City%20Farm/Newham_City_Farm_Meat_2_Dry_Cured_Oak_Smoked_Streaky_Bacon_wxrdgc.jpg'
attach_photo(url63, product41, '63')

product42 = Product.create(
  name: "Pasture Raised Duck Breasts",
  description: "These ducks live in small flocks of two hundred. They forage on grasses and herbs across pastures. We believe a natural habitat and diet makes these ducks taste even better. They are then hung for a week to develop their flavour and texture",
  price: 14.60
)
product42.farm = farm7
product42.category = meat
product42.save
url64 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577855/be-natural/Newham%20City%20Farm/Newham_City_Farm_Meat_3_Pasture_Raised_Duck_Breasts_qrssov.jpg'
attach_photo(url64, product42, '64')

farm_category14 = FarmCategory.create(category: meat, farm: farm7)

product43 = Product.create(
  name: "Pasture Fed Organic Natural Beef Burgers",
  description: "Coarse ground, dry aged dairy beef, balanced with a blend of lighter beef and the more richly flavoured cow beef. Nothing else added. Season before or after cooking.",
  price: 4.40
)
product43.farm = farm8
product43.category = meat
product43.save
url65 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577751/be-natural/Deen%20City%20Farm/Deen_City_Farm_Meat_1_Pasture_Fed_Organic_Natural_BeefBurgers_alqt65.jpg'
attach_photo(url65, product43, '65')

product44 = Product.create(
  name: "Chuck Burgers",
  description: "These burgers are totally natural, you won't find any preservatives, rusk, chemicals, or any nasty hidden ingredients.",
  price: 8.20
)
product44.farm = farm8
product44.category = meat
product44.save
url66 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577751/be-natural/Deen%20City%20Farm/Deen_City_Farm_Meat_2_Chuck_Burgers_nnhviv.jpg'
attach_photo(url66, product44, '66')

product45 = Product.create(
  name: "Pasture Fed Rosy Veal Escalopes",
  description: "Escalopes are thin cut, lean and very tender. Sear them quickly in a hot pan. They also take well to a light marinade, a light sauce or coated in breadcrumbs and cooked crispy.",
  price: 8.90
)
product45.farm = farm8
product45.category = meat
product45.save
url67 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577751/be-natural/Deen%20City%20Farm/Deen_City_Farm_Meat_3_Pasture_Fed_Rosy_Veal_Escalopes_rje6ki.jpg'
attach_photo(url67, product45, '67')

farm_category15 = FarmCategory.create(category: meat, farm: farm8)

product46 = Product.create(
  name: "Organic Semi Skimmed Milk",
  description: "Organic semi skimmed milk from British farms we know and trust. Enjoy the natural creamy goodness of organic semi skimmed, which is non GM, high in calcium and lower in fat than whole milk.",
  price: 0.90
)
product46.farm = farm8
product46.category = dairy
product46.save
url68 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577750/be-natural/Deen%20City%20Farm/Deen_City_Farm_Dairy_1_Organic_Semi_Skimmed_Milk_rzqpw5.jpg'
attach_photo(url68, product46, '68')

product47 = Product.create(
  name: "Organic Skimmed Milk",
  description: "Our organic milk's pasteurised and unhomogenised.",
  price: 1.60
)
product47.farm = farm8
product47.category = dairy
product47.save
url69 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577750/be-natural/Deen%20City%20Farm/Deen_City_Farm_Dairy_2_Organic_Skimmed_Milk_rjyafk.jpg'
attach_photo(url69, product47, '69')

product48 = Product.create(
  name: "Organic Whole Milk",
  description: "Organic Whole milk from British farms we know and trust. Enjoy the natural creamy goodness of organic semi skimmed, which is non GM, high in calcium.",
  price: 1.30
)
product48.farm = farm8
product48.category = dairy
product48.save
url70 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577750/be-natural/Deen%20City%20Farm/Deen_City_Farm_Dairy_3_Organic_Whole_Milk_tt9atk.jpg'
attach_photo(url70, product48, '70')

farm_category16 = FarmCategory.create(category: dairy, farm: farm8)

product49 = Product.create(
  name: "Hake Fillets",
  description: "Delicious white fish perfect for your fish pie.",
  price: 9.10
)
product49.farm = farm9
product49.category = fish
product49.save
url71 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578349/be-natural/West%20Hampstead/West_Hampstead_Fish_1_Hake_Fillets_kab0gq.jpg'
attach_photo(url71, product49, '71')

product50 = Product.create(
  name: "Lemon Sole Fillets",
  description: "Lemon sole is a misnomer since it's neither a real sole, nor does it taste of lemon. It's actually a flounder (the family that includes plaice and turbot).",
  price: 11.00
)
product50.farm = farm9
product50.category = fish
product50.save
url72 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578349/be-natural/West%20Hampstead/West_Hampstead_Fish_2_Lemon_Sole_Fillets_lc8jkm.jpg'
attach_photo(url72, product50, '72')

product51 = Product.create(
  name: "Gurnard Fillets",
  description: "Gurnard is perfect for roasting whole. Once cooked, the meat can be picked away from the bones on the plate which will save you the hassle of filleting it.",
  price: 8.70
)
product51.farm = farm9
product51.category = fish
product51.save
url73 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578349/be-natural/West%20Hampstead/West_Hampstead_Fish_3_Gurnard_Fillets_mitrmy.jpg'
attach_photo(url73, product51, '73')

farm_category17 = FarmCategory.create(category: fish, farm: farm9)

product52 = Product.create(
  name: "Organic Chicken Thighs",
  description: "Our birds enjoy a relaxed and natural upbringing with acres and acres of luscious pastures free of any pesticides to roam across and forage. A wholesome diet of insects and grubs hiding in the ground and meadow grasses and herbs are supplemented by GM free organic corn to ensure that the birds are kept healthy.",
  price: 8.10
)
product52.farm = farm9
product52.category = meat
product52.save
url74 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578349/be-natural/West%20Hampstead/West_Hampstead_Meat_1_Organic_Chicken_Thighs_e1xn7e.jpg'
attach_photo(url74, product52, '74')

product53 = Product.create(
  name: "81 Day Chicken Thighs",
  description: "Our birds enjoy a relaxed and natural upbringing with acres and acres of luscious pastures free of any pesticides to roam across and forage. A wholesome diet of insects and grubs hiding in the ground and meadow grasses and herbs are supplemented by GM free organic corn to ensure that the birds are kept healthy.",
  price: 8.60
)
product53.farm = farm9
product53.category = meat
product53.save
url75 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578349/be-natural/West%20Hampstead/West_Hampstead_Meat_2_81_Day_Chicken_Thighs_zb4koi.jpg'
attach_photo(url75, product53, '75')

product54 = Product.create(
  name: "Organic Chicken Drumsticks",
  description: "Our birds enjoy a relaxed and natural upbringing with acres and acres of luscious pastures free of any pesticides to roam across and forage. A wholesome diet of insects and grubs hiding in the ground and meadow grasses and herbs are supplemented by GM free organic corn to ensure that the birds are kept healthy.",
  price: 4.50
)
product54.farm = farm9
product54.category = meat
product54.save
url76 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630578349/be-natural/West%20Hampstead/West_Hampstead_Meat_3_Organic_Chicken_Drumsticks_a5kzii.jpg'
attach_photo(url76, product54, '76')

farm_category18 = FarmCategory.create(category: meat, farm: farm9)

product55 = Product.create(
  name: "Pure & Simple ice-cream",
  description: "An unflavoured traditional dairy ice cream.",
  price: 5.00
)
product55.farm = farm10
product55.category = dairy
product55.save
url77 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577815/be-natural/Ealing%20Farmers/Ealing_Farmers_dairy_1_Pure___Simple_ice-cream_r3elip.jpg'
attach_photo(url77, product55, '77')

product56 = Product.create(
  name: "Lemon Curd ice-cream",
  description: "With swirls of rich lemon curd it's refreshingly tasty!",
  price: 5.50
)
product56.farm = farm10
product56.category = dairy
product56.save
url78 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577815/be-natural/Ealing%20Farmers/Ealing_Farmers_dairy_2_Lemon_Curd_ice-cream_ggmhvx.jpg'
attach_photo(url78, product56, '78')

product57 = Product.create(
  name: "Chocolate & Ginger ice-cream",
  description: "A rich, deep, satisfying chocolately treat.",
  price: 4.60
)
product57.farm = farm10
product57.category = dairy
product57.save
url79 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577815/be-natural/Ealing%20Farmers/Ealing_Farmers_dairy_3_Chocolate___Ginger_ice-cream_faux0l.jpg'
attach_photo(url79, product57, '79')

farm_category19 = FarmCategory.create(category: dairy, farm: farm10)

product58 = Product.create(
  name: "Mackerel",
  description: "Either line caught or fish sustainably by day boats in England.",
  price: 7.20
)
product58.farm = farm10
product58.category = fish
product58.save
url80 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577816/be-natural/Ealing%20Farmers/Ealing_Farmers_Fish_1_Mackerel_mwnrnt.jpg'
attach_photo(url80, product58, '80')

product59 = Product.create(
  name: "Organic Sardines",
  description: "Delicious oily fish, caught in England.",
  price: 5.70
)
product59.farm = farm10
product59.category = fish
product59.save
url81 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577816/be-natural/Ealing%20Farmers/Ealing_Farmers_Fish_2_Organic_Sardines_xgkdgx.jpg'
attach_photo(url81, product59, '81')

product60 = Product.create(
  name: "Organic Salmon Fillets",
  description: "Known for its orange-red flesh, delicate flavour and firm texture. It is also the richest in Omega 3 of all our salmons.",
  price: 9.30
)
product60.farm = farm10
product60.category = fish
product60.save
url82 = 'https://res.cloudinary.com/olya-kolesova/image/upload/v1630577815/be-natural/Ealing%20Farmers/Ealing_Farmers_Fish_3_Organic_Salmon_Fillets_qiwwsm.jpg'
attach_photo(url82, product60, '82')

puts "Seeds have been created"
