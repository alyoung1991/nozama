Product.delete_all
User.delete_all

p1 = Product.create!(
    name: 'Amazon Basics AAA 1.5 Volt Performance Alkaline Batteries - Pack of 8',
    description: 'IN THE BOX: 8-pack of AAA 1.5 volt alkaline batteries for reliable performance across a wide range of devices',
    price: 6.34,
    department: 'Health, Household & Baby Care',
    picture_url: 'https://m.media-amazon.com/images/I/71KmGO9peEL._AC_SL1313_.jpg'
)

p2 = Product.create!(
    name: 'Multipet Lambchop Plush Dog Toy 10" with Squeaker',
    description: 'Shari Lewis classic and beloved lamb is adored by dogs Extra soft plush exterior is great for cuddling Includes squeaker for playtime fun 10" regular size dog toy Pet should be supervised while playing',
    price: 14.75,
    department: 'Pet Supplies',
    picture_url: 'https://m.media-amazon.com/images/I/81O7mf19NeL._AC_SL1500_.jpg'
)

p3 = Product.create!(
    name: 'Nishiki Medium Grain Rice, 80 Ounce',
    description: '5 lb. bag
When flavor and texture of the rice is crucial in cooking, Nishiki is the brand people look to.
This along with consistent quality has made Nishiki the most popular rice brand today. Sushi experts agree that Nishiki is their number one choice.
If you have leftover rice, put it away by saran wrapping it and refrigerating until it is time to eat again. When reheating, adding some water to the rice will fluff it up',
    price: 6.73,
    department: 'Grocery & Gourmet Food',
    picture_url: 'https://m.media-amazon.com/images/I/91L+CDt9giL._SL1500_.jpg'
)

p4 = Product.create!(
    name: 'Mkono Plant Stand Mid-Century Modern Plant Stand Indoor (Plant and Pot NOT Included) Flower Pot Holder Home Decor, Brown',
    description: '【Modern Minimalist Style Design】Elegant house floor planter stand reflects minimalist which inspired by classic mid-century style. Well fits to most home decor and furniture, can be paired with a variety of plants and flowers on vases, mid-century design adds a touch of class to any room, balcony, window, patio or garden. NOTE: The Pot is not included in this item!',
    price: 22.98,
    department: 'Garden & Outdoor',
    picture_url: 'https://m.media-amazon.com/images/I/61M1bd7bltL._AC_SL1500_.jpg'
)

p5 = Product.create!(
    name: 'Partanna, Extra Virgin Olive Oil Tin, 16.9 Fl Oz',
    description: 'A monovarietal oil, only made with 100% Nocellara del Belice olives from the province of Trapani in Sicily.',
    price: 13.19,
    department: 'Grocery & Gourmet Food',
    picture_url: 'https://m.media-amazon.com/images/I/61Rff1eibcL._SL1000_.jpg'
)

p6 = Product.create!(
    name: 'TAILI Hanging Vacuum Space Saver Bags for Clothes, Set of 4 (2 Long 53"x27.6", 2 Short 41.3"x27.6"),Vacuum Seal Storage Bag Clear Bags for Suits, Dress or Jackets, Closet Organizer',
    description: 'Package of Vacuum Storage Bags: 2 Long( 53x27.6 in)+ 2 Short( 41.3x27.6 in) + 4 Comfortable Thumb Clip for Sealer',
    price: 25.49,
    department: 'Home & Kitchen',
    picture_url: 'https://m.media-amazon.com/images/I/71bOqJNvYjL._AC_SL1500_.jpg'
)

p7 = Product.create!(
    name: 'Espoma AP8 8-Quart Organic Potting Mix',
    description: 'Potting soil
For all indoor and outdoor containers
Enhanced with myco-tone water saving formula
Improve moisture retention and reduce drought stress
Power source type: Manual',
    price: 15.79,
    department: 'Garden & Outdoor',
    picture_url: 'https://m.media-amazon.com/images/I/818eZyswMmL._AC_SL1500_.jpg'
)

p8 = Product.create!(
    name: 'Amazon Basics USB 2.0 A-Male to Micro B Cable, 6 feet, Black',
    description: 'HIGH-SPEED TRANSMISSION: USB 2.0 cable with A Male to Micro B connectors; supports up to 480 Mbps data transmission speed',
    price: 5.86,
    department: 'Electronics',
    picture_url: 'https://m.media-amazon.com/images/I/61d84Q0UPtL._AC_SL1500_.jpg'
)

p9 = Product.create!(
    name: "47' Brand New MLB York Yankees Men's Clean Up Hat Home Cap Light Grey/White Navy One-Size",
    description: '100% Cotton
Imported
Buckle closure
Adjustable strap closure - one size fits all
Made from 100% Cotton Twill; Relaxed Fit
Garment washed for softer look & feel
High quality raised embroidered team logo on front',
    price: 21.92,
    department: 'Clothing',
    picture_url: 'https://m.media-amazon.com/images/I/71ZfTbZI2bL._AC_UL1280_.jpg'
)

p10 = Product.create!(
    name: 'USB C Hub, Hiearcool MacBook Pro Adapter USB C Dongle, 7 in 1 USB C to HDMI Multiport Adapter Compatible for USB C Laptops Nintendo and Other Type C Devices (4K HDMI USB3.0 SD/TF Card Reader 100W PD)',
    description: 'Rule All in one USB C Hub: The intelligent USB C Adapter has perfectly combined all the functions you need. USB C to HDMI hub equipped with USB3.0 x2, 4K@30 HDMI, SD/TF Card Adapter, and Up to 100W/20V/5A Type C Power Delivery charging port.',
    price: 24.99,
    department: 'Electronics',
    picture_url: 'https://m.media-amazon.com/images/I/71Og586RJCL._AC_SL1500_.jpg'
)

demoUser = User.create!(
    name: 'Demo User',
    email: 'demo@email.com',
    password: 'password'
)

u1 = User.create!(
    name: 'Alberto Young',
    email: 'alyoung1991@gmail.com',
    password: 'password'
)

u2 = User.create!(
    name: 'Leo Fraser',
    email: 'leo@email.com',
    password: 'password'
)

u3 = User.create!(
    name: 'John Doe',
    email: 'jd@email.com',
    password: 'password'
)