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

CATEGORIES = %w(Meat Crops Dairy Vegetables Fish Fruit Wine)

meat = Category.create(name: CATEGORIES[0])
crops = Category.create(name: CATEGORIES[1])
dairy = Category.create(name: CATEGORIES[2])
vegetables = Category.create(name: CATEGORIES[3])
fish = Category.create(name: CATEGORIES[4])
fruits = Category.create(name: CATEGORIES[5])
wine = Category.create(name: CATEGORIES[6])

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
  description: "Vauxhall City Farm is an urban farm in Waterloo, a hidden gem just moments from the Southbank. They have transformed a strip of wasteland into a flourishing community resource and a haven for nature, where they learn to care for ourselves, others, plants, animals and the environment."
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
product1.category = dairy
product1.save

product2 = Product.create(
  name: "Carrick cheese",
  description: "A traditional handmade farmhouse cheese in a 500g wedge. Carrick has a deep, nutty and earthy flavour.  The aroma is rich and earthy, and the texture is firm and with a creamy finish. It will dry naturally with age.",
  price: 14
)
product2.farm = farm1
product2.category = dairy
product2.save

product3 = Product.create(
  name: "Cheddar cheese",
  description: "Tangy, rich and with a satisfying bite, a traditional farmhouse cheddar, matured slowly in our cheese store for around 9 months. This cheese is made with unpasturised milk from our ethical dairy farm. It best consumed within 4 weeks.",
  price: 15
)
product3.farm = farm1
product3.category = dairy
product3.save

product4 = Product.create(
  name: "Organic Cauliflower",
  description: "Our cauliflowers come leaves on, which have a flavour somewhere between cauliflower and sweet cabbage, enjoy these boiled for a few minutes or roasted with olive oil.",
  price: 3
)
product4.farm = farm1
product4.category = vegetables
product4.save

product5 = Product.create(
  name: "Organic British Artichoke",
  description: "To prepare your Artichoke, remove all the tough outer leaves and the fibrous choke in the centre, rub with lemon and serve with a meze of Mediterranean dishes.",
  price: 2.9
)
product5.farm = farm1
product5.category = vegetables
product5.save

product6 = Product.create(
  name: "Organic Baby Courgette Flowers",
  description: "Make the most of these British summer delights and snap them up fast! Only available for a few weeks every summer these courgette flowers are beautiful stuffed with soft cheese, herbs and deep fried.",
  price: 5.4
)
product6.farm = farm1
product6.category = vegetables
product6.save

product7 = Product.create(
  name: "Centre Cut Trout Fillet",
  description: "Sustainably farmed in Hampshire. A premium cut of trout.",
  price: 15.27
)
product7.farm = farm2
product7.category = fish
product7.save

product8 = Product.create(
  name: "Coho Salmon Fillets",
  description: "Known for its orange-red flesh, delicate flavour and firm texture. It is also the richest in Omega 3 of all our salmons.",
  price: 8.95
)
product8.farm = farm2
product8.category = fish
product8.save

product9 = Product.create(
  name: "Sea Bass",
  description: "Mainly sourced from smaller day boats across the South Coast from Sussex all the way through to Cornwall, we also source our white fish and premium smoked haddock from Peterhead in Scotland. Delicious roasted or grilled with a butter, lemon & parsley sauce.",
  price: 6.45
)
product9.farm = farm2
product9.category = fish
product9.save

product10 = Product.create(
  name: "Organic Sirloin Steak",
  description: "Certified 100% pasture fed by the Pasture for Life and organic by the Soil Association. All our beef is dry aged on the bone for 30 days, aged for tenderness & flavour.",
  price: 9.27
)
product10.farm = farm2
product10.category = meat
product10.save

product11 = Product.create(
  name: "Organic Rump Steak",
  description: "Certified 100% pasture fed by the Pasture for Life and organic by the Soil Association. All our beef is dry aged on the bone for 30 days, aged for tenderness & flavour.",
  price: 9.13
)
product11.farm = farm2
product11.category = meat
product11.save

product12 = Product.create(
  name: "Pasture Raised Whole Chicken",
  description: "These chickens live in small flocks. They forage on grasses and herbs across Sladesdown Farms Devon pastures. We believe a natural habitat and diet makes these chickens taste even better.",
  price: 11.12
)
product12.farm = farm2
product12.category = meat
product12.save

product13 = Product.create(
  name: "Organic True Spinach",
  description: "True Spinach is more delicate than perpetual spinach; it is smaller, sweeter and juicier, making it lovely used in salads or cooked.",
  price: 2.43
)
product13.farm = farm3
product13.category = vegetables
product13.save

product14 = Product.create(
  name: "Organic Rhubarb",
  description: "We love growing rhubarb; it's a refreshing change from winter roots, and grows vigorously at a time when English fields are otherwise quite bare. The variety is Timperley Early, with tender, juicy stalks and tart flavour. Unlike the bright pink ‘forced’ rhubarb you’ll find in most supermarkets, our rhubarb is field-grown, its blush-pink stalks tinged with green.",
  price: 4.23
)
product14.farm = farm3
product14.category = vegetables
product14.save

product15 = Product.create(
  name: "Organic Bunched Beetroot",
  description: "Dazzling red-purple organic beetroot puts a smile on the face and a spring in the step – there are plenty of ways to enjoy the health benefits of this vibrant root vegetable.",
  price: 3.23
)
product15.farm = farm3
product15.category = vegetables
product15.save

product16 = Product.create(
  name: "Strawberries",
  description: "Our Strawberries are bursting with the flavour of British Summertime. Grown & hand-picked with care by the team. We farm responsibly to encourage biodiversity & produce fruit with a sense of place. This is a Celebration of Seasonality!",
  price: 3.14
)
product16.farm = farm3
product16.category = fruits
product16.save

product17 = Product.create(
  name: "Organic Blueberries",
  description: "Organically grown blueberries - sourced locally during the summer months, moving further afield out of peak season.",
  price: 2.89
)
product17.farm = farm3
product17.category = fruits
product17.save

product18 = Product.create(
  name: "Organic Raspberries",
  description: "Organic raspberries, produced with nutrients from the soil and plenty of care from our dedicated growers. Sweet, juicy and aromatic, they're ideal for desserts or snacks.",
  price: 2.89
)
product18.farm = farm3
product18.category = fruits
product18.save

product19 = Product.create(
  name: "Organic Wheat Grain",
  description: "Organic Wheat Grain is a traditional bakers grain of choice.  It has a rich, buttery flavour and makes reliable bakes over and over again.",
  price: 2.71
)
product19.farm = farm4
product19.category = crops
product19.save

product20 = Product.create(
  name: "Wholegrain Wheat Flour",
  description: "Smooth wholegrain wheat flour is a popular ingredient in the preparation of buns, croissants, cakes, waffles, donuts, pancakes, muffins, cookies and other dishes. It is suitable for thickening soups or sauces and can be combined with other types of wheat and non-wheat flour.",
  price: 1.47
)
product20.farm = farm4
product20.category = crops
product20.save

product21 = Product.create(
  name: "Organic Pearl Barley",
  description: "Pearl barley has a distinctive texture and unique, nutty taste. It holds up well during cooking, and absorbs the flavour of the cooking liquid.",
  price: 2.76
)
product21.farm = farm4
product21.category = crops
product21.save

product22 = Product.create(
  name: "Organic Peaches",
  description: "A lovely, sweet flat peach with almond overtones. These peaches will need ripening at home to bring out their best and sweetest flavour.",
  price: 3.23
)
product22.farm = farm4
product22.category = fruits
product22.save

product23 = Product.create(
  name: "Organic Nectarines",
  description: "These nectarines are delicous once ripened. They are organic too, so no nasty pesticides.",
  price: 3.56
)
product23.farm = farm4
product23.category = fruits
product23.save

product24 = Product.create(
  name: "English Cox Apples",
  description: "The classic English apple, sweet with a complex flavour and delicious bite. We found the these Cox's to be sweeter than any other we've tried.",
  price: 2.94
)
product24.farm = farm4
product24.category = fruits
product24.save

product25 = Product.create(
  name: "Organic Bunched Carrots",
  description: "These super sweet carrots are grown in healthy nutritious soils, giving them a juicy, healthy crunch that we can't get enough of.",
  price: 5.23
)
product25.farm = farm5
product25.category = vegetables
product25.save

product26 = Product.create(
  name: "Organic Large Potatoes",
  description: "These potatoes will be either Kelly or Cara variety, both of which are great for mashing, roasting, baking and chipping.",
  price: 2.21
)
product26.farm = farm5
product26.category = vegetables
product26.save

product27 = Product.create(
  name: "Organic Red Onions",
  description: "Eaten raw, red onions tend to be strong flavoured and biting; cooking caramelises the juices and mellows the flavour.",
  price: 1.97
)
product27.farm = farm5
product27.category = vegetables
product27.save

product28 = Product.create(
  name: "Organic unroasted buckwheat",
  description: "The distinctive, musky flavour of buckwheat works well in stuffings, pilaffs, and as a substitute for rice with stews.",
  price: 2.11
)
product28.farm = farm5
product28.category = crops
product28.save

product29 = Product.create(
  name: "Organic Bulgur Wheat",
  description: "This Organic Bulgur Wheat is made by removing the outer layer from wheat, which is then steamed, dried and cracked.",
  price: 1.98
)
product29.farm = farm5
product29.category = crops
product29.save

product30 = Product.create(
  name: "Organic Wholemeal Rye Flour",
  description: "A distinctively tangy stoneground ancient grain flour for making close-textured breads, cakes and biscuits.",
  price: 2.23
)
product30.farm = farm5
product30.category = crops
product30.save

product31 = Product.create(
  name: "Organic Spatchcock Chicken",
  description: "Our birds enjoy a relaxed and natural upbringing with acres and acres of pastures free of any pesticides to roam across and forage. A wholesome diet of insects and grubs hiding in the ground and meadow grasses and herbs are supplemented by GM free organic corn to ensure that the birds are kept healthy,",
  price: 11.48
)
product31.farm = farm6
product31.category = meat
product31.save

product32 = Product.create(
  name: "Rack of Lamb",
  description: "Taken from the lamb ribs, the rack is very popular as a great, impressive all rounder, that’s super quick to cook and easy to achieve perfectly crisp skin and tender, melt-in-the-mouth flesh. The cutlets are individual rib steaks taken from the rack and look beautiful on the plate. Best for: quick roasting or grilling",
  price: 8.72
)
product32.farm = farm6
product32.category = meat
product32.save

product33 = Product.create(
  name: "Pasture Raised Whole Duck",
  description: "These ducks live in small flocks of two hundred. They forage on grasses and herbs across pastures. We believe a natural habitat and diet makes these ducks taste even better. They are then hung for a week to develop their flavour and texture",
  price: 21.65
)
product33.farm = farm6
product33.category = meat
product33.save

product34 = Product.create(
  name: "Organic Tenderstem Broccoli",
  description: "Until recently Tenderstem broccoli was only grown overseas, but the UK has perfect conditions for growing this tasty brassica and this has now become a local treat.",
  price: 3.94
)
product34.farm = farm6
product34.category = vegetables
product34.save

product35 = Product.create(
  name: "Organic Broccoli",
  description: "Organic broccoli offers a wealth of vitamins and antioxidants. However, these can be destroyed if given the old-fashioned (over-boiling) treatment - a brief steaming of the florets does the trick, or pop in a covered bowl in the microwave with a spoonful of water.",
  price: 3.68
)
product35.farm = farm6
product35.category = vegetables
product35.save

product36 = Product.create(
  name: "Organic Courgettes",
  description: "The courgette is a small narrow breed of squash or pumpkin. Modern Green Courgette varieties like the 'Ambassador' and 'Defender', are distant derivatives of the original squashes that would have originated in the Americas. They are believed to have been cultivated there for between five and ten thousand years, and were brought over to Europe following the discovery of the new world. The word 'Squash', is an abbreviation for the North American Indian word 'askutasquash', meaning 'eaten raw or uncooked'. Here in the UK, courgettes now grow prolifically in the peak summer months, but the season can often end suddenly in September. We see them as such a kitchen essential we have them on the shop all year round, buying these quality courgettes from Spain when not from the UK.",
  price: 2.17
)
product36.farm = farm6
product36.category = vegetables
product36.save

product37 = Product.create(
  name: "Domaine Cavalier Rouge",
  description: "VINTAGE – 2019 VARIETY – Cabernet Sauvignon, Syrah and Merlot ABV – 12.5%",
  price: 13.23
)
product37.farm = farm7
product37.category = wine
product37.save

product38 = Product.create(
  name: "Tinto Qvinto Arrio",
  description: "VINTAGE – 2019 VARIETY – Tempranillo ABV – 12.5%",
  price: 11.23
)
product38.farm = farm7
product38.category = wine
product38.save

product39 = Product.create(
  name: "Mariana Red",
  description: "VINTAGE – 2019 VARIETY – Touriga Nacional 40%, Aragonez 30%, Alicante Bouschet 20%, Trincadeira 10% ABV – 12.5%",
  price: 10.23
)
product39.farm = farm7
product39.category = wine
product39.save

product40 = Product.create(
  name: "Organic Chicken Breast Mini Fillets",
  description: "Our birds enjoy a relaxed and natural upbringing with acres and acres of luscious pastures free of any pesticides to roam across and forage. A wholesome diet of insects and grubs hiding in the ground and meadow grasses and herbs are supplemented by GM free organic corn to ensure that the birds are kept healthy.",
  price: 10.57
)
product40.farm = farm7
product40.category = meat
product40.save

product41 = Product.create(
  name: "Dry Cured Oak Smoked Streaky Bacon",
  description: "Our bacon is dry cured by hand in very small batches. The bacon is cured in a simple mix of salt and muscavado sugar and then air dried for a week before gently smoking over smouldering oak chips. Our bacon is about as far as you can get from a a mass produced product. The dry curing, drying and smoking all help to remove excess moisture from the bacon helping it to crisp up beautifully in the pan.",
  price: 5.23
)
product41.farm = farm7
product41.category = meat
product41.save

product42 = Product.create(
  name: "Pasture Raised Duck Breasts",
  description: "These ducks live in small flocks of two hundred. They forage on grasses and herbs across pastures. We believe a natural habitat and diet makes these ducks taste even better. They are then hung for a week to develop their flavour and texture",
  price: 14.62
)
product42.farm = farm7
product42.category = meat
product42.save

product43 = Product.create(
  name: "Pasture Fed Organic Natural Beef Burgers",
  description: "Coarse ground, dry aged dairy beef, balanced with a blend of lighter beef and the more richly flavoured cow beef. Nothing else added. Season before or after cooking.",
  price: 4.42
)
product43.farm = farm8
product43.category = meat
product43.save

product44 = Product.create(
  name: "Chuck Burgers",
  description: "These burgers are totally natural, you won't find any preservatives, rusk, chemicals, or any nasty hidden ingredients.",
  price: 8.23
)
product44.farm = farm8
product44.category = meat
product44.save

product45 = Product.create(
  name: "Pasture Fed Rosy Veal Escalopes",
  description: "Escalopes are thin cut, lean and very tender. Sear them quickly in a hot pan. They also take well to a light marinade, a light sauce or coated in breadcrumbs and cooked crispy.",
  price: 8.97
)
product45.farm = farm8
product45.category = meat
product45.save

product46 = Product.create(
  name: "Organic Semi Skimmed Milk",
  description: "Organic semi skimmed milk from British farms we know and trust. Enjoy the natural creamy goodness of organic semi skimmed, which is non GM, high in calcium and lower in fat than whole milk.",
  price: 0.95
)
product46.farm = farm8
product46.category = dairy
product46.save

product47 = Product.create(
  name: "Organic Skimmed Milk",
  description: "Our organic milk's pasteurised and unhomogenised.",
  price: 1.60
)
product47.farm = farm8
product47.category = dairy
product47.save

product48 = Product.create(
  name: "Organic Whole Milk",
  description: "Organic Whole milk from British farms we know and trust. Enjoy the natural creamy goodness of organic semi skimmed, which is non GM, high in calcium.",
  price: 1.30
)
product48.farm = farm8
product48.category = dairy
product48.save

product49 = Product.create(
  name: "Hake Fillets",
  description: "Delicious white fish perfect for your fish pie.",
  price: 9.18
)
product49.farm = farm9
product49.category = fish
product49.save

product50 = Product.create(
  name: "Lemon Sole Fillets",
  description: "Lemon sole is a misnomer since it's neither a real sole, nor does it taste of lemon. It's actually a flounder (the family that includes plaice and turbot).",
  price: 11.01
)
product50.farm = farm9
product50.category = fish
product50.save

product51 = Product.create(
  name: "Gurnard Fillets",
  description: "Gurnard is perfect for roasting whole. Once cooked, the meat can be picked away from the bones on the plate which will save you the hassle of filleting it.",
  price: 8.76
)
product51.farm = farm9
product51.category = fish
product51.save

product52 = Product.create(
  name: "Organic Chicken Thighs",
  description: "Our birds enjoy a relaxed and natural upbringing with acres and acres of luscious pastures free of any pesticides to roam across and forage. A wholesome diet of insects and grubs hiding in the ground and meadow grasses and herbs are supplemented by GM free organic corn to ensure that the birds are kept healthy.",
  price: 8.17
)
product52.farm = farm9
product52.category = meat
product52.save

product53 = Product.create(
  name: "81 Day Chicken Thighs",
  description: "Our birds enjoy a relaxed and natural upbringing with acres and acres of luscious pastures free of any pesticides to roam across and forage. A wholesome diet of insects and grubs hiding in the ground and meadow grasses and herbs are supplemented by GM free organic corn to ensure that the birds are kept healthy.",
  price: 8.62
)
product53.farm = farm9
product53.category = meat
product53.save

product54 = Product.create(
  name: "Organic Chicken Drumsticks",
  description: "Our birds enjoy a relaxed and natural upbringing with acres and acres of luscious pastures free of any pesticides to roam across and forage. A wholesome diet of insects and grubs hiding in the ground and meadow grasses and herbs are supplemented by GM free organic corn to ensure that the birds are kept healthy.",
  price: 4.53
)
product54.farm = farm9
product54.category = meat
product54.save

product55 = Product.create(
  name: "Pure & Simple ice-cream",
  description: "An unflavoured traditional dairy ice cream.",
  price: 5
)
product55.farm = farm10
product55.category = dairy
product55.save

product56 = Product.create(
  name: "Lemon Curd ice-cream",
  description: "With swirls of rich lemon curd it's refreshingly tasty!",
  price: 5.5
)
product56.farm = farm10
product56.category = dairy
product56.save

product57 = Product.create(
  name: "Chocolate & Ginger ice-cream",
  description: "A rich, deep, satisfying chocolately treat.",
  price: 4.6
)
product57.farm = farm10
product57.category = dairy
product57.save

product58 = Product.create(
  name: "Mackerel",
  description: "Either line caught or fish sustainably by day boats in England.",
  price: 7.23
)
product58.farm = farm10
product58.category = fish
product58.save

product59 = Product.create(
  name: "Organic Sardines",
  description: "Delicious oily fish, caught in England.",
  price: 5.72
)
product59.farm = farm10
product59.category = fish
product59.save

product60 = Product.create(
  name: "Organic Salmon Fillets",
  description: "Known for its orange-red flesh, delicate flavour and firm texture. It is also the richest in Omega 3 of all our salmons.",
  price: 9.39
)
product60.farm = farm10
product60.category = fish
product60.save

puts "Seeds have been created"
