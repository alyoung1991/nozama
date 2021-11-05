Product.delete_all
User.delete_all

p1 = Product.create!(
    name: 'Amazon Basics AAA 1.5 Volt Performance Alkaline Batteries - Pack of 8',
    description: 'IN THE BOX: 8-pack of AAA 1.5 volt alkaline batteries for reliable performance across a wide range of devices
//DEVICE COMPATIBLE: Ideal for remotes, radios, controllers, toys, and more
//STORAGE: Ships in physical store retail packaging
//SINGLE USE: These batteries are NOT rechargeable; for rechargeable options, check out Amazon Basics rechargeable batteries',
    price: 6.34,
    department: 'Health, Household & Baby Care',
    picture_url: 'https://m.media-amazon.com/images/I/71KmGO9peEL._AC_SL1313_.jpg'
)

p2 = Product.create!(
    name: 'Multipet Lambchop Plush Dog Toy 10" with Squeaker',
    description: "Shari Lewis' classic and beloved lamb is adored by dogs
//Extra soft plush exterior is great for cuddling
//Includes squeaker for playtime fun
//10' regular size dog toy
//Pet should be supervised while playing",
    price: 14.75,
    department: 'Pet Supplies',
    picture_url: 'https://m.media-amazon.com/images/I/81O7mf19NeL._AC_SL1500_.jpg'
)

p3 = Product.create!(
    name: 'Nishiki Medium Grain Rice, 80 Ounce',
    description: '5 lb. bag
//When flavor and texture of the rice is crucial in cooking, Nishiki is the brand people look to.
//This along with consistent quality has made Nishiki the most popular rice brand today. Sushi experts agree that Nishiki is their number one choice.
//If you have leftover rice, put it away by saran wrapping it and refrigerating until it is time to eat again. When reheating, adding some water to the rice will fluff it up',
    price: 6.73,
    department: 'Grocery & Gourmet Food',
    picture_url: 'https://m.media-amazon.com/images/I/91L+CDt9giL._SL1500_.jpg'
)

p4 = Product.create!(
    name: 'Mkono Plant Stand Mid-Century Modern Plant Stand Indoor (Plant and Pot NOT Included) Flower Pot Holder Home Decor, Brown',
    description: '【Modern Minimalist Style Design】Elegant house floor planter stand reflects minimalist which inspired by classic mid-century style. Well fits to most home decor and furniture, can be paired with a variety of plants and flowers on vases, mid-century design adds a touch of class to any room, balcony, window, patio or garden. NOTE: The Pot is not included in this item!
//【Handcraft】 Made from natural handcrafted beech wood. Heavy duty, sturdy, and durable. Handcrafted and made using dowel construction methods guarantee its strength. We always pursuit accurate same size of each leg, but it may have a little bit deviation between legs for it is handmade plant stand. No worries, we offer four floor pads, and they are well work for balance the legs for more stable, they also help to prevent any scratches and anti slip.
//【Easy to Assemble】Wooden plant stand comes flat in two pieces and just needs to put the two legs together. Simply stand it up and insert the cross bar in the notch. It is also easy to move it to a different spot or different place.
//【An Attractive Piece for Your Home】Having an indoor plant stand, therefore, is a necessity and provides a way to present your plants in a visually interesting way. My plant stands are elevated to keep plants off the floor and provide them with better air quality and circulation so they look better.
//【Suitable Size】Height is7.48", Interior diameter is 9.65". Flat plant stand,there are not too many restrictions on the flower pots used.Best fit 10" straight cylindrical flower pot.',
    price: 22.98,
    department: 'Garden & Outdoor',
    picture_url: 'https://m.media-amazon.com/images/I/61M1bd7bltL._AC_SL1500_.jpg'
)

p5 = Product.create!(
    name: 'Partanna, Extra Virgin Olive Oil Tin, 16.9 Fl Oz',
    description: 'A monovarietal oil, only made with 100% Nocellara del Belice olives from the province of Trapani in Sicily.
//We freshly cold press our olives within hours of picking to obtain our premium extra virgin olive oil.
//It’s bottled immediately after the harvest in mid-October in a dark bottle to keep it fresh longer
//The oil has a rich flavor profile, with notes of artichokes, almonds and a peppery finish.
//The Sicily olive oil has received awards for quality that ranked it as the best olive oil in the world.',
    price: 13.19,
    department: 'Grocery & Gourmet Food',
    picture_url: 'https://m.media-amazon.com/images/I/61Rff1eibcL._SL1000_.jpg'
)

p6 = Product.create!(
    name: 'TAILI Hanging Vacuum Space Saver Bags for Clothes, Set of 4 (2 Long 53"x27.6", 2 Short 41.3"x27.6"),Vacuum Seal Storage Bag Clear Bags for Suits, Dress or Jackets, Closet Organizer',
    description: "Package of Vacuum Storage Bags: 2 Long( 53x27.6 in)+ 2 Short( 41.3x27.6 in) + 4 Comfortable Thumb Clip for Sealer
//Upgraded Valve:The space saver bags works with any vacuum cleaner, hand-press is available.exhaust air 35% faster,saving your time.
//Visible Sealed Result:When you zip the space saver bags, TAILI color-changeable zippers can help you to identify the bags sealed well or not by eyes.
//Protect Your Stored Items: These space vacuum storage bags are waterproof, airtight and will protect your clothes for a long time
//100% SATISFACTION. If any of the TAILI product did not meet your requirement, simply contact us and we'll help to solve it in 24 hours. You take NO RISK by ordering today!",
    price: 25.49,
    department: 'Home & Kitchen',
    picture_url: 'https://m.media-amazon.com/images/I/71bOqJNvYjL._AC_SL1500_.jpg'
)

p7 = Product.create!(
    name: 'Espoma AP8 8-Quart Organic Potting Mix',
    description: 'Potting soil
//For all indoor and outdoor containers
//Enhanced with myco-tone water saving formula
//Improve moisture retention and reduce drought stress
//Power source type: Manual',
    price: 15.79,
    department: 'Garden & Outdoor',
    picture_url: 'https://m.media-amazon.com/images/I/818eZyswMmL._AC_SL1500_.jpg'
)

p8 = Product.create!(
    name: 'Amazon Basics USB 2.0 A-Male to Micro B Cable, 6 feet, Black',
    description: 'HIGH-SPEED TRANSMISSION: USB 2.0 cable with A Male to Micro B connectors; supports up to 480 Mbps data transmission speed
//COMPATIBILITY: Ideal for charging Android phones and tablets or connecting PC peripherals such as hard drives, printers, and more
//GOLD-PLATED CONNECTORS: Quality connectors resist corrosion for signal purity; smaller connector designed to fit smaller spaces
//IMPROVED CHARGING: Improved charging capability up to 2100 mA; thin and flexible cable with compact connector head works with nearly all cases
//IN THE BOX: (1) 6 foot USB 2.0 cable with A Male to Micro B connectors',
    price: 5.86,
    department: 'Electronics',
    picture_url: 'https://m.media-amazon.com/images/I/61d84Q0UPtL._AC_SL1500_.jpg'
)

p9 = Product.create!(
    name: "47' Brand New MLB York Yankees Men's Clean Up Hat Home Cap Light Grey/White Navy One-Size",
    description: '100% Cotton
//Imported
//Buckle closure
//Adjustable strap closure - one size fits all
//Made from 100% Cotton Twill; Relaxed Fit
//Garment washed for softer look & feel
//High quality raised embroidered team logo on front',
    price: 21.92,
    department: 'Clothing',
    picture_url: 'https://m.media-amazon.com/images/I/71ZfTbZI2bL._AC_UL1280_.jpg'
)

p10 = Product.create!(
    name: 'USB C Hub, Hiearcool MacBook Pro Adapter USB C Dongle, 7 in 1 USB C to HDMI Multiport Adapter Compatible for USB C Laptops Nintendo and Other Type C Devices (4K HDMI USB3.0 SD/TF Card Reader 100W PD)',
    description: 'Rule All in one USB C Hub: The intelligent USB C Adapter has perfectly combined all the functions you need. USB C to HDMI hub equipped with USB3.0 x2, 4K@30 HDMI, SD/TF Card Adapter, and Up to 100W/20V/5A Type C Power Delivery charging port.
//4K HDMI to USB C Hub: The USB C Hub provides you with lifelike 4K 3840 x 2160@30Hz HDMI images that bring an immersive 3D resolution experience.
//100W Power Delivery Supported: The USB C Hub supports a 100W USB C pass-through charging, ideal for MacBook Pro/Air or and other USB c devices, your primary choice of USB C Hub.
//Efficiently USB C Hub: Two high-speed USB-A 3.0 ports capable of 5Gb/s transfer speed for quick data transfer & Charging up to 5V@0.9A. Plug and Play, No Software, Drivers required.
//Travel Size SD/TF USB C Adapter: Aluminium Alloy Casting and 2.4ounce Pocket Size,5Gbps read and write, capacity up to 2TB cards.Ideal as a Mac Book Pro USB C Hub/USB C Laptop Hub for traveling.',
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