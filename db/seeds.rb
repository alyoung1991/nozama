Product.delete_all
User.delete_all
Review.delete_all
CartItem.delete_all
Cart.delete_all

ActiveRecord::Base.connection.reset_pk_sequence!("products")
ActiveRecord::Base.connection.reset_pk_sequence!("users")
ActiveRecord::Base.connection.reset_pk_sequence!("reviews")
ActiveRecord::Base.connection.reset_pk_sequence!("cart_items")
ActiveRecord::Base.connection.reset_pk_sequence!("carts")

# product seeds:

Product.create!(
    name: 'Amazon Basics AAA 1.5 Volt Performance Alkaline Batteries - Pack of 8',
    description: 'IN THE BOX: 8-pack of AAA 1.5 volt alkaline batteries for reliable performance across a wide range of devices
//DEVICE COMPATIBLE: Ideal for remotes, radios, controllers, toys, and more
//STORAGE: Ships in physical store retail packaging
//SINGLE USE: These batteries are NOT rechargeable; for rechargeable options, check out Amazon Basics rechargeable batteries',
    price: 6.34,
    department: 'Health, Household & Baby Care',
    picture_url: 'https://m.media-amazon.com/images/I/71KmGO9peEL._AC_SL1313_.jpg'
)

Product.create!(
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

Product.create!(
    name: 'Nishiki Medium Grain Rice, 80 Ounce',
    description: '5 lb. bag
//When flavor and texture of the rice is crucial in cooking, Nishiki is the brand people look to.
//This along with consistent quality has made Nishiki the most popular rice brand today. Sushi experts agree that Nishiki is their number one choice.
//If you have leftover rice, put it away by saran wrapping it and refrigerating until it is time to eat again. When reheating, adding some water to the rice will fluff it up',
    price: 6.73,
    department: 'Grocery & Gourmet Food',
    picture_url: 'https://m.media-amazon.com/images/I/91L+CDt9giL._SL1500_.jpg'
)

Product.create!(
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

Product.create!(
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

Product.create!(
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

Product.create!(
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

Product.create!(
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

Product.create!(
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

Product.create!(
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

# # Appliances:
# Product.create!(
#     name: 'FRIGIDAIRE EFIC101-BLACK Portable Compact Maker, 26 lb per Day, Ice Making Machine, Black',
#     description: 'Convenient, compact design is ideal for use in small kitchens & other compact spaces like RVs, boats & more
# //Produces 26 pounds of ice a day - never run to the store for a bag of ice again
# //Offers an easy-to-use LED control panel that allows you to choose from 2 ice size settings
# //Portable ice maker requires no installation - just plug in unit, add water & wait up to 15 minutes to enjoy fresh ice
# //Flawless design boasts a excellent reputation, offering consistent & dependable ice production that has been continually perfected',
#     price: 119.99,
#     department: 'Appliances',
#     picture_url: 'https://m.media-amazon.com/images/I/71nwK6MEQrL._AC_SL1500_.jpg'
# )

# Product.create!(
#     name: '5 cu ft Chest Freezer for Your House, Garage, Basement, Apartment, Kitchen, Cabin, Lake House, Timeshare, or Business',
#     description: 'Euhomy - GIVE YOU THE BEST ICE - Have you experienced a new type of bullet ice cube? Euhomys newly designed bullet-type countertop ice maker machine brings you a brand new ice cube experience. Ice machine countertop can produce about 26 lbs of ice per day. Only 8 minutes can produce 9 pcs delicious ice cubes, you can do it anytime you want. Chewable ice cubes are perfect for Drinks/Food/Seafood/Smoothies.
# //SUPER ICE-MAKING CAPACITY - Euhomys counter ice maker machine is equipped with a highly efficient compressor, which is not only excellent in refrigeration, but also does not make too much noise during ice-making. All this allows you to enjoy ice cubes and drinks in a quiet environment. Not only the characteristics of the ice cube machine compressor make the ice maker consume little energy, but the tabletop ice maker machine has a recirculating water tank, which will not cause water waste.
# //EVERYTHING IS TO MAKE IT EASIER FOR YOU - Euhomy ice maker machine countertop is user-friendly, so you dont need to install it. The silver stainless steel surface is not only very beautiful but also very easy to clean. Ice maker countertop prime clearance is equipped with a removable ice basket and ice scoop, so you can move ice cubes very easily. You can place the portable ice maker countertop top rated prime anywhere, perfect for any countertop/Kitchen/Living room/Bedroom/Office/Party.
# //CONTROL PANEL - Compact ice maker has two optional ice cube size buttons, you can choose different sizes of ice cubes according to your needs. Small ice machine has the most advanced infrared sensor technology. When the ice basket is full, home ice maker will stop the ice making to prevent ice from overflowing. You can view the ice making process through the transparent window. When the water level in the water tank is insufficient, the indicator light will remind you to replenish water in time.
# //EVERYTHING WE DO IS TO SATISFY YOU - Whether you are a single tenant/college student/family member, you all need to live an exquisite life. Euhomy provides a one-year warranty service. If you experience any issues, please ask us for help and we will help you solve them. Note: Youd better put the ice maker upright for at least 24 hours before using it.',
#     price: 210.00,
#     department: 'Appliances',
#     picture_url: 'https://m.media-amazon.com/images/I/51sN5YkQuQL._AC_SL1000_.jpg'
# )
# Product.create!(
#     name: 'Euhomy Ice Maker Machine Countertop, 26 lbs in 24 Hours, 9 Cubes Ready in 6 Mins, Electric ice Maker and Compact Potable ice Maker with Ice Scoop and Basket. Perfect for Home/Kitchen/Office.(Silver)',
#     description: 'Euhomy - GIVE YOU THE BEST ICE - Have you experienced a new type of bullet ice cube? Euhomys newly designed bullet-type countertop ice maker machine brings you a brand new ice cube experience. Ice machine countertop can produce about 26 lbs of ice per day. Only 8 minutes can produce 9 pcs delicious ice cubes, you can do it anytime you want. Chewable ice cubes are perfect for Drinks/Food/Seafood/Smoothies.
# //SUPER ICE-MAKING CAPACITY - Euhomys counter ice maker machine is equipped with a highly efficient compressor, which is not only excellent in refrigeration, but also does not make too much noise during ice-making. All this allows you to enjoy ice cubes and drinks in a quiet environment. Not only the characteristics of the ice cube machine compressor make the ice maker consume little energy, but the tabletop ice maker machine has a recirculating water tank, which will not cause water waste.
# //EVERYTHING IS TO MAKE IT EASIER FOR YOU - Euhomy ice maker machine countertop is user-friendly, so you dont need to install it. The silver stainless steel surface is not only very beautiful but also very easy to clean. Ice maker countertop prime clearance is equipped with a removable ice basket and ice scoop, so you can move ice cubes very easily. You can place the portable ice maker countertop top rated prime anywhere, perfect for any countertop/Kitchen/Living room/Bedroom/Office/Party.
# //CONTROL PANEL - Compact ice maker has two optional ice cube size buttons, you can choose different sizes of ice cubes according to your needs. Small ice machine has the most advanced infrared sensor technology. When the ice basket is full, home ice maker will stop the ice making to prevent ice from overflowing. You can view the ice making process through the transparent window. When the water level in the water tank is insufficient, the indicator light will remind you to replenish water in time.
# //EVERYTHING WE DO IS TO SATISFY YOU - Whether you are a single tenant/college student/family member, you all need to live an exquisite life. Euhomy provides a one-year warranty service. If you experience any issues, please ask us for help and we will help you solve them. Note: Youd better put the ice maker upright for at least 24 hours before using it.',
#     price: 149.99,
#     department: 'Appliances',
#     picture_url: 'https://m.media-amazon.com/images/I/81GBToZSsCL._SL1500_.jpg'
# )
# Product.create!(
#     name: 'Broan-NuTone 412101 Non-Ducted Ductless Range Hood with Lights Exhaust Fan for Under Cabinet, 21-Inch, White',
#     description: 'HIGH-QUALITY DUCTLESS RANGE HOOD INSERT: White hood insert improves ventilation and lighting over your stove with the non-ducted filtration system that effectively removes smoke and odors
# //EFFECTIVE INCANDESCENT LIGHTING: A protective lamp lens distributes light evenly over the cook-top and accepts up to 75W bulb (bulb not included)
# //EASY CARE: Charcoal filter is replaceable so you can maintain optimum grease capture and keep the kitchen fresh
# //VERSATILE: Separate rocker switches control the light and the 2-speed fan for easy use
# //IDEAL SIZE: Range hood insert measures 21" and should be installed at least 18" above cook top
# //INSTALLATION: Range hood is installed as hardwired or with an optional power cord kit (HCK44; sold separately)',
#     price: 136.42,
#     department: 'Appliances',
#     picture_url: 'https://m.media-amazon.com/images/I/61z+WdmGUEL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'GE Profile Opal | Countertop Nugget Ice Maker with Side Tank | Portable Ice Machine with Bluetooth Connectivity | Smart Home Kitchen Essentials | Stainless Steel Finish | Up to 24 lbs. of Ice Per Day',
#     description: 'NUGGET ICE: Enjoy chewable ice made from compacted ice flakes, perfect for cocktails, sodas and other refreshing beverages. Instead of the traditional hard cubes, enjoy soft nuggets of ice that retain flavors and are easy to chew. Side tank included that produces approximately 3X more ice and easily attaches to the ice maker.
# //PORTABLE: Easily move your ice maker as needed. No water hookup required, just plug it into any 120v grounded (standard) electrical outlet and fill the reservoir with water. As ice melts, the water returns to the reservoir, where it will simply be made back into more ice.
# //QUICK & POWERFUL: Within only 20 minutes, you’ll be enjoying soft, crunchy ice, just like the ice you love from your favorite restaurant. The Opal produces 24 lbs. of ice per day, and the bin holds 3 lbs. at a time. Always have ice at the ready with an ice maker that automatically powers on when ice is running low.
# //SMART - Built-In Bluetooth Connectivity: Schedule fresh ice, monitor your ice maker’s status and order accessories, all through the app on your smartphone.
# //No water hookup required, just plug it into any 120v grounded (standard) electrical outlet and fill the reservoir with water | As ice melts, the water returns to the reservoir, where it will simply be made back into more ice
# //Unit needs propper spacing around unit for airflow. Restricted airflow can cause unit to not make ice and run hot.',
#     price: 579.00,
#     department: 'Appliances',
#     picture_url: 'https://m.media-amazon.com/images/I/81b5KcoaWGL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Frigidaire EFIC-B-SS Ice Maker, Black Stainless Steel',
#     description: 'COMPACT - Its 1. 7 liter reservoir sits below ice basket and produce up to 26 lbs. of ice cubes per day
# //HIGH EFFICIENCY - Make bullet shaped ice cubes in less than 9 minutes and store up to 1. 7 lbs. at a time
# //EASY TO USE - The user friendly digital control panel let you know when bin is full and when water is empty
# //MODERN DESIGN - Stainless Steel Ice Maker with a through-window that will let you watch your ice being made at all times
# //ACCESSORIES - Comes with Ice Basket and Scoop',
#     price: 89.98,
#     department: 'Appliances',
#     picture_url: 'https://m.media-amazon.com/images/I/71ytZOcwYqL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: '2-Pack Ice Machine Cleaner and Descaler 16 fl oz, Nickel Safe Descaler | Ice Maker Cleaner Compatible with All Major Brands (Scotsman, KitchenAid, Affresh) - Made in USA by Essential Values',
#     description: 'Powerful and Versatile: Use our 2-Pack ice machine cleaner and descaler in your Nugget Ice Maker, Profile Ice Maker, Igloo Ice Maker, Sonic Ice Maker, Opal Ice Machine, or your ice maker of choice. Our universal ice maker cleaning fluid restores your machines to like new.
# //Keep Your Ice Tasting Nice: You won’t find our proprietary formula in just any ice maker cleaner — it’s a non-toxic, multipurpose solution meant to remove mineral scale deposits on a wide variety of machines. Plus, our ice machine cleaner deeply penetrates calcium build-up and doesn’t leave your ice tasting like cleaning products. When it comes to ice maker cleaner solution, Essential Values is a no-brainer
# //Incredible Value: Our Descaling Solution will bring new life to your ice machine. One 16-ounce bottle works for 4 uses, meaning you get over a year’s worth of Essential Values ice machine cleaner and descaler for a single purchase! We recommend descaling your ice machine every 3–6 months to make the most out of our ice machine cleaner
# //Compatible with Any Icemaker: Essential Values ice cleaner works for all residential and commercial ice makers, including countertop ice makers, crushed ice makers, portable ice makers, freestanding ice makers, undercounter ice makers, and built-in ice makers
# //Safe, Non-Toxic & Made in the USA: Our nickel safe ice machine cleaner is made from natural concentrated citric acid that is odorless, powerful, and safe for your machine and your family. Plus, the bottle is made from 100% PET, so you can recycle after use!',
#     price: 19.99,
#     department: 'Appliances',
#     picture_url: 'https://m.media-amazon.com/images/I/7168yKt9TOS._SL1500_.jpg'
# )
# Product.create!(
#     name: 'FRIGIDAIRE EFIC235-AMZ Countertop Crunchy Chewable Nugget Ice Maker, 44lbs per Day, 12 x 17 x 19 inches',
#     description: 'COUNTERTOP SIZE: With it’s elegant design, the EFIC235 will wow your guests before they even try the delicious ice it makes. Well sized for any countertop in your home.
# //QUICK & POWERFUL: Within only 15 minutes, you’ll be enjoying soft, crunchy ice, just like the ice you love from your favorite restaurant.
# //PORTABLE: Compact countertop design plugs into any electrical outlet at home and can come with you to your next camping or tailgate. No water hookup required!
# //HIGH CAPACITY: Produces 44 lbs. of ice per day, and the bin holds 3 lbs. at a time.
# //AUTOMATIC: As ice melts, the water returns to the reservoir, where it will simply be made back into more ice.',
#     price: 349.99,
#     department: 'Appliances',
#     picture_url: 'https://m.media-amazon.com/images/I/71+iQvOVH+L._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Igloo ICEB26AQ Automatic Portable Electric Countertop Ice Maker Machine, 26 Pounds in 24 Hours, 9 Ice Cubes Ready in 7 Minutes, With Ice Scoop and Basket, Perfect for Water Bottles, Mixed Drinks',
#     description: 'DESIGNED FOR CONVENIENCE: Portable, convenient and compact in size, this retro metallic red ice maker looks good on a countertop while producing ice for whenever or wherever you need it
# //LARGE ICE MAKING CAPACITY: Keep the water tank filled and this unit will produce 26 pounds of ice in a 24 hour period enough to keep drinks cold all day long
# //WATER TANK CAPACITY: 3 quarts
# //ICE BASKET CAPACITY: Stores up to 2 pounds of ice at a time
# //QUICK FREEZING ICE: Makes 9 small or large cylinder shaped ice cubes in as little as 7 minutes
# //CONTROL PANEL: Simple to understand and illuminated with led lights, the electronic control panel lets you know when you need to add water, when the ice basket is full and allows you to choose the size of the ice cubes
# //TRANSPARENT LID: Large clear lid allows for easy viewing of ice cube capacity',
#     price: 149.99,
#     department: 'Appliances',
#     picture_url: 'https://m.media-amazon.com/images/I/71VnpdfklqL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'OxiClean Gel Sticks - 6.2 oz - 2 pk by OxiClean',
#     description: 'OxiClean Gel Sticks - 6.2 oz - 2 pk',
#     price: 21.49,
#     department: 'Appliances',
#     picture_url: 'https://m.media-amazon.com/images/I/715zuTlPUzL._AC_UX679_.jpg'
# )
# Product.create!(
#     name: 'FRIGIDAIRE EFIC101-BLACK Portable Compact Maker, 26 lb per Day, Ice Making Machine, Black',
#     description: 'Convenient, compact design is ideal for use in small kitchens & other compact spaces like RVs, boats & more
# //Produces 26 pounds of ice a day - never run to the store for a bag of ice again
# //Offers an easy-to-use LED control panel that allows you to choose from 2 ice size settings
# //Portable ice maker requires no installation - just plug in unit, add water & wait up to 15 minutes to enjoy fresh ice
# //Flawless design boasts a excellent reputation, offering consistent & dependable ice production that has been continually perfected',
#     price: 119.99,
#     department: 'Appliances',
#     picture_url: 'https://m.media-amazon.com/images/I/71nwK6MEQrL._AC_SL1500_.jpg'
# )

# # Arts, Crafts & Sewing:
# Product.create!(
#     name: 'Apple Barrel Acrylic Paint in Assorted Colors (2 oz), 21484, Admiral Blue',
#     description: 'CONVENIENT SIZE - This Apple Barrel Acrylic Paint comes in a versatile 2 oz size that is great for basecoating, stenciling, and so much more
# //FUN FINISH - This brilliant acrylic paint dries to a matte finish - perfect for a variety of arts and crafts!
# //BRIGHT COLOR - Grab your acrylic paint brushes and add this fun, bright acrylic paint to all your DIY projects
# //USE ON MULTIPLE SURFACES - Use Apple Barrel Acrylic Paint on a variety of surfaces such as wood, paper, canvas, Styrofoam, paper mache, and so much more
# //EASY CLEAN UP - Clean up is easy with this acrylic paint! Simply clean up while wet with soap and water
# //MANUFACTURING - We proudly manufacture Apple Barrel Acrylic Paint and Acrylic Paint Sets in the USA
# //FORMULA - Apple Barrel is a non-toxic and water-based formula, great for crafting with all ages. Expand your art supplies with this fun brand!',
#     price: 3.99,
#     department: 'Arts, Crafts & Sewing',
#     picture_url: 'https://m.media-amazon.com/images/I/61PPyqE2bKL._AC_SL1200_.jpg'
# )
# Product.create!(
#     name: 'VELCRO Brand Industrial Fasteners Stick-On Adhesive | Professional Grade Heavy Duty Strength | Indoor Outdoor Use, 1 7/8in, Circles 4 Sets',
#     description: 'PROFESSIONAL GRADE ADHESIVE FASTENERS: These industrial strength hook and loop fasteners provide strong holding power designed for heavy-duty applications; safely holds up to 10 pounds
# //WATER RESISTANCE PROVIDES UNMATCHED VERSATILITY: With heavy-duty strength, these fasteners make the ultimate organization tool for mounting, hanging, storing, or securing items indoors or outdoors; adheres to most surfaces in the house and garage
# //LONG LASTING DURABILITY: Easy stick-on application is ideal for a broad range of surfaces and applications; special sticky back adhesive provides a secure and long-lasting hold
# //DESIGNED FOR TOUGH APPLICATIONS: Super strong, superior holding power allow these adhesives to securely fasten to smooth surfaces including plastic, glass, metal, and painted wallboard
# //NO TOOLS REQUIRED: No hammer, drilling, nails, or epoxy necessary, hook and loop industrial strength fasteners feature an easy peel and stick application, it’s the simple solution to organize on many surfaces without putting holes in the wall',
#     price: 3.47,
#     department: 'Arts, Crafts & Sewing',
#     picture_url: 'https://m.media-amazon.com/images/I/51aZUuJkwzL._AC_SL1000_.jpg'
# )
# Product.create!(
#     name: 'Charm Bracelet Making Kit,Jewelry Making Supplies Beads,Unicorn/Mermaid Crafts Gifts Set for Girls Teens Age 8-12',
#     description: 'Perfect Unicorn Mermaid Bracelet Making Gifts For Kids Girls, Charms Craft Supplies are great jewelry findings for your clip-on charms, dangle, earrings, bracelet, necklace pendants, keychain,
# //Simple to Use - Unscrew to remove the end cap, After stringing in the beads, simply screw back the end cap tightly. NO TOOL, NO GLUE, NO MESS.
# //Great Gift Idea for Girls:making it a great gift item for girls who like DIY accessories. Also, it can be an entertaining party craft for girls.
# //Everything you need– nothing left out, no more running around hardware stores trying to find the supplies kit.
# //Package include: 15x European big hole beads, 22x Charm and Pendants , 20x Colored beads, shamballa, rainbow, crystal beads 2x Snake chain bracelet and 3 Necklace Cords',
#     price: 21.90,
#     department: 'Arts, Crafts & Sewing',
#     picture_url: 'https://m.media-amazon.com/images/I/81MyPJz3d7L._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Ring Size Adjuster for Loose Rings - 12 Pack, 2 Sizes - Jewelry Sizer, Mandrel for Making Jewelry Guard, Spacer, Sizer, Fitter - Spiral Silicone Tightener Set with Polishing Cloth',
#     description: 'Fit 90% Of Rings And Easy To Use - Come in 2 sizes: (6 pcs) ø2mm X 10cm coil is best for thin rings that are less then 3mm in thickness and the (6 pcs) ø3mm X 10cm flat coils are best for rings up to 5mm in thickness. This Ring Size Adjuster will make your ring smaller without resizing. Moreover, it fits both women and men rings. Whatever you do your ring fits perfect and there is no chance to lose your valuable jewelry down.
# //High Quality Certified TPU Silicone - Forget about allergies and discomfort. TPU (thermoplastic polyurethane) is used in medicine and therefore is completely safe for health and causes No irritation whatsoever. TPU is reusable and durable. It is also suitable for all rings: those that were made of precious metals and which have precious stones. Easy to put on and you can barely feel it
# //Multipurpose - This small device is extremely useful as it resolves many issues such as: losing rings, oversize rings (way to handle if your ring is too big) and even combining multiple thin rings in one single piece. You are stressed out before your wedding and you lost weight, your engagement ring is loose, and you are worried to lose it? Don’t worry about that, this Ring Size Adjuster is specifically designed to secure your rings.
# //Safe For Your Rings - The silicone ring adjuster resolves the issue without damaging the ring, some rings cannot be resized in a traditional way by a jeweler as this procedure may damage the gemstones and also distort the original beauty of the ring, so the ultimate solution here is a Ring Size Adjuster. It will resize your ring safely and keep it beautiful, just as it was when you bought it!
# //Invisible And Discrete - Your new ring adjusters are completely see-through and leave no doubt about visibility, however it is there accomplishing its mission. No one will notice the ring adjuster is there, unless you point your finger at it. It also is made from memory material and will not get loose on your ring or stretch out, it will always keep its initial form.',
#     price: 7.99,
#     department: 'Arts, Crafts & Sewing',
#     picture_url: 'https://m.media-amazon.com/images/I/51XVCV9ZYhL._AC_.jpg'
# )
# Product.create!(
#     name: 'Gorilla Dual Temp Mini Hot Glue Gun Kit with 30 Hot Glue Sticks, (Pack of 1)',
#     description: 'Glue gun features: Dual temp, precision nozzle, easy squeeze trigger, enhanced safety features, built-in stand, wide base
# //Gorilla hot glue sticks: Weather resistant for indoor and outdoor use, safe for both high and low temperature glue guns, 45 second working time, impact tough
# //Gorilla Mini Dual Temp Glue Gun uses mini sized glue sticks (.27" Diameter)
# //This set includes: (1) dual temp mini hot glue gun, (1) 30 count 4" mini hot glue sticks',
#     price: 12.49,
#     department: 'Arts, Crafts & Sewing',
#     picture_url: 'https://m.media-amazon.com/images/I/71zepTCy4kL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Scissors, iBayam 8" Multipurpose Scissors Bulk 3-Pack, Ultra Sharp Blade Shears, Comfort-Grip Handles, Sturdy Sharp Scissors for Office Home School Sewing Fabric Craft Supplies, Right/Left Handed',
#     description: 'Definitely Household Scissors -- Great for cutting burlap, paper, card stock, cardboard, wrapping paper, light line, fabric, tape, photos, coupons, and opening boxes & packaging. Surprised for sewing, tailoring, quilting, dressmaking, cutting patterns, cutting quilting, Vinyl, Leather, and making face masks. Exceptional scissors for multiple uses in various rooms, in the Handcraft Workshop, bathroom, sewing room, laundry room, craft room, at the office, great for most regular household tasks.
# //3 Pairs of Quality Straight Handled Scissors -- They strongly allow you to make precise cuts with great control as the blade has the perfect amount of friction, which is very comfortable to use. 3 pairs of straight handled scissors for smooth, efficient cutting scissors for general use. Suitable for teachers middle/high school classroom supplies.
# //Sharp and Durable -- Durable stainless steel blades enable high-density steel that makes it 3 times harder than normal stainless steel and is smoother cutting. 6 X longer lasting than the previous formula and remain sharp for 100,000 + cuts. Blades stay sharper longer; We chose bright colors, green/purple/orange. Different color rubber handles are used in different places, Soft-grip holes let you maintain a comfortable, can be used left- or right-handed.
# //iBayam 8-Inch Soft-Grip Scissors -- 3 special scissors are suitable for most items that need to be cut. It can also be used as household scissors for cutting open frozen food bags ready for cooking. Convenient, sturdy, especially sharp scissors for general use, and very durable.',
#     price: 18.99,
#     department: 'Arts, Crafts & Sewing',
#     picture_url: 'https://m.media-amazon.com/images/I/61eT3wcT+KL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Cricut 2007155 Joy Smart Vinyl - Removable - 5.5" x 48", Adhesive Decal Roll - Black',
#     description: '1 roll 5.5 inches x 48 inches (13.9 cm x 121.9 cm)
# //Works without a cutting mat – just load & go!
# //Great for creating removable decals for laptops, phones, walls, and more
# //Removes without residue
# //Easy to weed, effortless to apply',
#     price: 14.16,
#     department: 'Arts, Crafts & Sewing',
#     picture_url: 'https://m.media-amazon.com/images/I/41Zx1jLQTML._AC_SL1000_.jpg'
# )
# Product.create!(
#     name: 'iBayam Journal Planner Pens Colored Pens Fine Point Markers Fine Tip Drawing Pens Porous Fineliner Pen for Bullet Journaling Writing Note Taking Calendar Coloring Art Office School Supplies, 18 Colors',
#     description: 'VIBRANT COLORS Smart Fineliner Color Pens Set 18 Unique Colors, 0.38 mm Fine Point Colored Pens, Assorted Color Fine Tip Marker Pens, Minimal Bleed Thru Ink. Perfect as Journal Pens, Planner Pens, Journaling Pens, Teacher Pens, School Supplies, Office Supplies, Planner Accessories. Premium gift set for the family, friends, co-workers, Birthday, Christmas.
# //SMOOTH WRITING Colorful Fine tip marker pen set with superfine, metal-clad fine tipped and outstanding performance in all areas of writing, drawing, coloring, easy and comfortable to write. You will also find them great for home, office, work, business, colleague, church, club, and organazition activities.
# //GREAT marker pens for drawing lines & details, journal, planner, calendar, agenda, notebook, note taking, painting, writing, coloring, sketch, marker, signing, manga, animation, graphic, design, illustration, included artists fine-ink drawings and coloring small intricate patterns. Perfect Colored Pens for Middle School, High School, College, Bachelor, Graduate, Women, Men, Adult Coloring.
# //Colored art writing drawing porous point pens. Water-based ink, minimal bleed thru (except very thin paper), these fiber-tipped pens create fine lines and intense water-based colors. Packaged in a soft transparent vinyl bag.
# //WELL PACKAGE --- Our fine line pens come in a nice plastic storage case with fold over snap closure which can be easily placed in backpacks. For using in school, travel or used in the home and office. Great Back to School Stationary, planner or journaling supplies for Christmas, Birthday, Mothers Day, Easter Day, Valentines Day, Thanksgiving Day, Party, New Years.',
#     price: 7.99,
#     department: 'Arts, Crafts & Sewing',
#     picture_url: 'https://m.media-amazon.com/images/I/61MZnfSZUxL._AC_SL1100_.jpg'
# )
# Product.create!(
#     name: 'Super Saver Yarn, Real Teal - 1',
#     description: '100% Acrylic
# //super saver solid yarn
# //Made of 100-percent acrylic medium worsted material
# //Available for 5-mm knitting needle and 5.5-mm crochet hook
# //Available in real teal color',
#     price: 14.99,
#     department: 'Arts, Crafts & Sewing',
#     picture_url: 'https://m.media-amazon.com/images/I/91XE+llCBRL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Soft Tape Measure Double Scale Body Sewing Flexible Ruler for Weight Loss Medical Body Measurement Sewing Tailor Craft Vinyl Ruler, Has Centimetre Scale on Reverse Side 60-inch（White）',
#     description: 'Measuring range: 0 to 60 inches and 0 to 150 centimeters. There is a centimeter scale on the back, which is accurately printed in inches and centimeters. Both sides can be measured according to your requirements. You can put one in your pocket or backpack without taking up too much space
# //Great Material: Tailor Vinyl tape measure wont stretch or deform, provides superior measurement consistence; Soft tape measure, a flexible and portable tape measure, made from soft plastic material, white color
# //Operate and Read: Black markings on bright white tape is big enough for you to read, the tape has metal tabs on each end of the cloth tape measure to butt-up against the item your measuring; The metal ends also can prevent fraying
# //Wide Application: Cloth tape measure; body tape measure,sewing tape measure,measuring tape tailor. Good sewing tool, accurate tape measuring for sewing, tailoring, body, waist measurement or measuring any curved surface. can provide you accurate measurements, suitable for a seamstress, a crafter, a quilter or whoever just need a flexible measuring tape',
#     price: 3.99,
#     department: 'Arts, Crafts & Sewing',
#     picture_url: 'https://m.media-amazon.com/images/I/61vysAVtFBL._AC_SL1406_.jpg'
# )

# # Automotive Parts & Accessories:
# Product.create!(
#     name: 'THISWORX Car Vacuum Cleaner - Portable, High Power, Handheld Vacuums w/ 3 Attachments, 16 Ft Cord & Bag - 12v, Auto Accessories Kit for Interior Detailing - Black',
#     description: 'Practical: A mini vacuum for car or truck that is compact, lightweight (2.4 lbs), and easy to use. The large dust bin capacity is ready for ash, dust, or drive-thru food spills. A fully loaded interior car detailing kit housed in an ergonomic design.
# //Effective: Made for on-the-go use and to solve out-of-reach problems. A very sandy day at the beach? A coat of dog hair? The portable vacuum cleaner for car is designed to solve problems.
# //Powerful: The cyclonic force and strong suction of the 106w motor will terminate any dirt or debris; say goodbye to hard-to-reach crumbs stuck under the driver’s seat. Our mini car vacuum even has a top of the line washable HEPA filter.
# //Interior Car Cleaning Kit Includes: 3 attachments (flathead, extendable, or brush nozzle) for detailing, carry bag, filter brush, and spare HEPA filter. Must have car accessories for men or women; these gadgets will keep the interior cute and tidy.
# //Convenient: Is the battery always dying when you need a car vac? These truck accessories for men & women use the 12v aux outlet for power. The 16 foot cord gives you the slack you need to clean the backseats or trunk without a snag.',
#     price: 44.97,
#     department: 'Automotive Parts & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/81-9vPPicyL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Rain-X 5079272-2 Latitude 2-IN-1 Water Repellency Wiper Blade, 14" (Pack of 1)',
#     description: 'Rain-X has made the wiper pairings for your vehicle. Please visit the Rain-X brand store by clicking the Blue link above and go to wiper blades, and Latitude Water Repellency Pairs to find your pair.
# //Water repelling coating - Rain‑X water repelling formula is applied to the windshield by the wiper blades and lasts for months
# //Now even easier to install - new and improved pre-installed universal adaptor installs within minutes and fits 96 percent of all vehicles
# //Advanced, beam blade technology - contours to the curvature of the windshield for a smooth, virtually streak-free wipe and features a patented universal adapter for easy installation.
# //Ultimate all-weather performance - designed with a synthetic blend rubber squeegee to withstand extreme weather conditions and deliver longer lasting, superior wipe performance',
#     price: 17.98,
#     department: 'Automotive Parts & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/61cl6d1l6YL._AC_SL1000_.jpg'
# )
# Product.create!(
#     name: 'Cleaning Gel for Car, Car Cleaning Kit Universal Detailing Automotive Dust Car Crevice Cleaner Auto Air Vent Interior Detail Removal Putty Cleaning Keyboard Cleaner for Car Vents, PC, Laptops, Cameras',
#     description: 'PERFECT CAR CLEANING TOOL: Cleaning gel is designed to clean car air vents, steering wheels, console panel, storage bins, cup holder, door handles, dashboards and other other hard-to-reach spaces.
# //EASY TO USE: Push car cleaning gel into any little cracks, press car vent cleaner on and the dust would be carried away. You can also press the keyboard cleaner slightly on the keyboard surface and then pull out slowly, the dust would be carried away with the cleaning gel. (Note: dont press the cleaning gel too hard, especially on mechanical keyboard).
# //ECO-FRIENDLY: This keyboard cleaner is made of cleaning gel, smells sweet with lightly fragrance. The car cleaning kit can easily pick up dust.
# //REUSABLE: This Auto car detailing cleaning gel can be used for multiple times until the gel turns to black. Please put the gel into the sealed box after use and store it in a cool dry place. DO NOT use car vent cleaner to wipe the cellphone screen or computer monitor. (NOTE: don’t wash the universal cleaning gel with water.)
# //MULTIPLE USES: The Automotive dust clenging gel can not only clean the car vents, dashboard vents, gear shifts, knobs, door handles, air vents, CD slots, cup holders, keyholes,but also the home and office, PC computer keyboard, printer, cell phone, calculator, TV remote and furniture. The suitable surface must be water resistant, or the dust removal for car would stick to it.',
#     price: 6.99,
#     department: 'Automotive Parts & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/71dC6Gdj2lS._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'AstroAI Air Compressor Tire Inflator Portable Air Pump for Car Tires 12V DC Auto Tire Pump with Digital Pressure Gauge, 100PSI with Emergency LED Light for Car, Bicycle, Balloons and Other Inflatables',
#     description: 'FAST INFLATION & ADVANCED ACCURACY: High-quality materials were sourced for this tire inflator as it can pump up your cars tires with 35 L/Min, it can inflate the 195/55/R15 car tire from 0 to 35psi under 5 minutes. Professionally calibrated to always return a reading within 1.5% of the pressure of your tire. Please NOTE that after 10-15 minutes of continuous use, let the air compressor rest and cool for an equal amount of time at a minimum before continuing use.
# //PROGRAMMABLE INFLATION: Use the "M" button to set your desired pressure unit, and then press the "+" and "-" buttons to set the desired pressure. The air compressor will automatically shut off when it reaches the pre-set pressure (Please make sure the pressure you set is higher than the current pressure of your tire).
# //PRODUCT HIGHLIGHTS: One-click to change pressure units among PSI, kPa, BAR and KG/CM; Large white backlight LCD screen makes it easy to read even in the dark; Equipped with integrated LED flashlight with independent switch control for emergency use; 12V 120W 10ft (3.05 meters) long heavy-duty car cigarette lighter cord makes it convenient to use;NOT 110V AC plug. Need an at least 10A converter to use in a wall plug.
# //WIDE RANGE OF APPLICATIONS: 3 Nozzles and Extra Fuse Included. Inflates any Schrader valve on cars, SUVs, motorcycles, and bicycles; the included accessories quickly inflate balls, air pillows, cushions, balloons and mattresses. NOTE: This pump is NOT intended for use with high pressure or large volume applications like pools and Inflatable canoe
# //BUY WITH CONFIDENCE: Easily stow the compressor away in your car or garage and it will be ready to use at a moment’s notice. Package includes 1* digital air compressor, 1* Replacement Fuse, 3* Nozzle Adapters, 1* Valve Extender, 1* Quick Connector, 1* Screw Rotation Attach, 1* User Manual; If you have any questions or concerns, please feel free to contact us.',
#     price: 31.99,
#     department: 'Automotive Parts & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/51WAK60GbIL._AC_.jpg'
# )
# Product.create!(
#     name: 'AstroAI 27” Snow Brush and Detachable Ice Scraper with Ergonomic Foam Grip for Cars, Trucks, SUVs (Heavy Duty ABS, PVC Brush)',
#     description: 'BUILT TO LAST: You’ll only need one, the high-strength ABS shaft, PC bristles, and EVA cotton handle have been engineered to withstand heavy snowstorms and temperatures as low as -40°F. Gifts for Women Men Dad Mom.
# //PUSH AND SCRAPE: Brush off snow and scrape under the ice without damaging your windshield! Break up ice with integrated knuckles and easily scrape it away. It can quickly help you brush off loose snow from car windshield, roof, door, hood, and side mirrors.
# //DIVIDE AND CONQUER: Quickly separate the brush and scraper for easier handling or dividing up work; stores easily both while connected and detached
# //ERGONOMIC DESIGN: Long winters are tough. The soft-to-touch, ergonomic handle is tougher. It won’t crack and will provide you comfort all winter
# //DIMENSIONS: 27” long give you added reach for cars, 7” brush head moves quickly across windscreens, 4.5” ice scraper gets deep down under without scratching; 1 year warranty provided by AstroAI',
#     price: 15.54,
#     department: 'Automotive Parts & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/511xGPqjglL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'STA-BIL Storage Fuel Stabilizer - Guaranteed To Keep Fuel Fresh Fuel Up To Two Years - Effective In All Gasoline Including All Ethanol Blended Fuels - For Quick, Easy Starts, 128 fl. oz. (22213)',
#     description: 'flash point: 84.0',
#     price: 52.99,
#     department: 'Automotive Parts & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/71e-239oGcS._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'AstroAI Digital Tire Pressure Gauge 150 PSI 4 Settings for Car Truck Bicycle with Backlit LCD and Non-Slip Grip, Blue',
#     description: 'Backlit LCD display and Lighted nozzle for visibility in dimly light areas
# //Designed to maintain correct tire pressure, reduce tire wear and extend tire life; Digital display reading instantly and clearly being shown, no longer do the guesswork of analog gauges
# //Nozzle easily forms a seal with the valve stem on schrader valves, giving quick and accurate readings in 0.1 increments; 4 settings with range: 0-150PSI / 0-10Bar / 0-10Kgf/cm² or 0-1000KPA
# //Simply press "ON/UNIT/OFF" button to turn on the tool, select the range, and automatically shut off in 30-40 seconds to save the power; Non-slip texture makes it easy to hold onto and the ergonomic design is both suitable for men and womens hands
# //Battery included; Perfect car accessories gifts for men; Versatile use for cars, trucks, motocycles, bicycles etc but not compatible with presta stems',
#     price: 11.99,
#     department: 'Automotive Parts & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/71PNIKuLmlL._SL1500_.jpg'
# )
# Product.create!(
#     name: 'Car Seat Headrest Hook 4 Pack Hanger Storage Organizer Uiversal for Handbag Purse Coat fit Universal Vehicle Car Black S Type',
#     description: 'Material : this good is made of f premium quality material.this item is wide & deep enough for your purse, backpack and so on .
# //Organize car space : it converts your car’s headrest into a storage space, help you keep your car interior perfectly clean and organized,the headrest hook can hang groceries, handbags,purses,schoolbags,umbrellas,water bottles, shopping bags,baby supplies and much more.
# //Easy to install :easy remove, easy installation. The car headrest hook with simple design, do not need to take off the headrest,no tools required .
# //Universal fit : sold by 4 packs and can be used in everywhere,fit most of car,SUV (installation size: 0.32-0.55 inch diameter of the headrest bar) . each item can hold up to 13 lb (6kg )
# //100% MONEY BACK GUARANTEE:If you are not satisfied with our product,let us know and you will be offered a full refund or replacement.',
#     price: 10.99,
#     department: 'Automotive Parts & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/91QjYtM4u3L._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'NOCO GENIUS1, 1-Amp Fully-Automatic Smart Charger, 6V and 12V Battery Charger, Battery Maintainer, Trickle Charger, and Battery Desulfator with Temperature Compensation',
#     description: 'Meet the GENIUS1 - Similar to our G750, just better. Its 35% smaller and delivers 35% more power. Its the all-in-one solution - battery charger, battery maintainer, trickle charger, plus battery desulfator.
# //Do more with Genius - Designed for 6-volt and 12-volt lead-acid automotive, marine, and deep-cycle batteries, including flooded, gel, AGM, and maintenance-free, plus lithium-ion batteries.
# //Enjoy precision charging - An integrated thermal sensor detects the ambient temperature and alters the charge to eliminate over-charging in hot climates and under-charging in cold climates.
# //Charge dead batteries - Charges batteries as low as 1-volt. Or use the all-new force mode that allows you to take control and manually begin charging dead batteries down to zero volts.
# //Restore your battery - Automatically detects battery sulfation and acid stratification to restore lost battery performance for stronger engine starts and extended battery life.
# //Beyond maintenance - Its not just a trickle charger, its an advanced battery maintainer. A fully-automatic, worry-free battery charger for everyday use - 24/7 - with zero overcharge.
# //Compatible with all types of vehicles - charge and maintain cars, motorcycles, lawn mowers, ATVs, lawn tractors, trucks, SUVs, boats, PWCs, classic cars, and more.',
#     price: 39.95,
#     department: 'Automotive Parts & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/81Wd4nh6jEL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Rain-X RX30212 Weatherbeater Wiper Blade - 12-Inches - (Pack of 1)',
#     description: 'Long lasting durability defined by a galvanized steel frame that prevents rust and corrosion
# //All natural squeegee rubber resists cracking, splitting and tearing caused by heat, cold, windshield wiper fluid and salt
# //High quality traditional blade that meets or exceeds all original equipment manufacturers standards
# //Quick and easy to install with pre-installed small j-hook adapter and contains multi-adapter for side pin, large j-hook and bayonet wiper blade arms
# //Provides a smooth, clean, streak-free wipe by using embedded friction reducers and multiple pressure points',
#     price: 11.98,
#     department: 'Automotive Parts & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/51uPwaHjggL._AC_SL1000_.jpg'
# )

# # Baby:
# Product.create!(
#     name: 'Choose your count - Baby Wipes, Pampers Sensitive Water Based Baby Diaper Wipes, Hypoallergenic and Unscented, 6 Pop-Top Packs, 336 Total Wipes (Packaging May Vary)',
#     description: 'Pampers Sensitive wipes are clinically proven for sensitive skin
# //From Pampers, the #1 pediatrician recommended brand
# //Thick and gentle for a soothing clean
# //Pop-top dispenses just one at a time
# //Gentle and hypoallergenic—0% alcohol, fragrance, parabens and latex* (*Natural rubber)
# //For healthy skin, use together with Pampers Swaddlers diapers
# //New Look! Packaging may vary',
#     price: 12.99,
#     department: 'Baby',
#     picture_url: 'https://m.media-amazon.com/images/I/81LcTzdbdXL._AC_SL1500_.jpg'
# )

# Product.create!(
#     name: 'Diapers Size 1 (8-14 lbs) Newborn, 198 Count - Pampers Swaddlers Disposable Baby Diapers, ONE MONTH SUPPLY (Packaging May Vary)',
#     description: 'Trusted protection, Pampers is the #1 U.S. Pediatrician Recommended Brand
# //LockAway Channels absorb wetness and lock it away
# //Breathefree Liner helps soothe and protect babys skin
# //Soft flexi-sides for comfortable fit
# //Gentle on babys delicate skin, Pampers Swaddlers Disposable Diapers is hypoallergenic and free of parabens and latex (Natural rubber)
# //Protect your newborns delicate belly with our Umbilical Cord Notch
# //Pampers Wetness Indicator
# //NEW! Swaddlers Wrap & Protect Waistband coming soon. Product & packaging may vary for a limited time',
#     price: 54.99,
#     department: 'Baby',
#     picture_url: 'https://m.media-amazon.com/images/I/71QyTDxfrJS._AC_SL1500_.jpg'
# )

# Product.create!(
#     name: 'WaterWipes Original Baby Wipes, 99.9% Water, Unscented & Hypoallergenic for Sensitive Newborn Skin, 4 Packs (240 Count)',
#     description: 'Clinically proven to clean and protect sensitive skin with simply 2 ingredients: Our fragrance-free baby wipes contain 99.9% purified water with a drop of fruit extract. Suitable for eczema-prone skin and allergy sufferers
# //Ideal for sensitive skin: WaterWipes unscented baby wipes are gentle enough for premature, infant, and newborn skin
# //Simple and clean: Hypoallergenic and contains no added fragrance, parabens, sulfates, or other unnecessary ingredients found in common baby care products
# //Trusted: WaterWipes is accepted by the National Eczema Association of America, registered by the Vegan Society, Dermatologically Approved by the Skin Health Alliance, and awarded 2021 Mom Must-Have by What to Expect
# //Perfect for: Diaper changes and cleaning baby’s sensitive hands, face, and eye area – great for mom too',
#     price: 14.99,
#     department: 'Baby',
#     picture_url: 'https://m.media-amazon.com/images/I/71+um7F-5CL._AC_SL1500_.jpg'
# )

# Product.create!(
#     name: 'Baby Wipes, Huggies Natural Care Sensitive Baby Diaper Wipes, Unscented, Hypoallergenic, 10 Flip-Top Packs (560 Wipes Total)',
#     description: '10 flip-top packs of 56 Huggies Natural Care Sensitive Baby Wipes, Unscented (560 wipes total); National Eczema Association Seal of Approval
# //Plant-Based Wipes since 1990: Huggies Natural Care Baby Wipes are plant-based & 99% purified water for a gentle clean
# //Safe for sensitive skin: hypoallergenic & dermatologically tested, unscented diaper wipes are infused with aloe & vitamin E; wipes are pH balanced to help maintain healthy skin
# //No harsh ingredients: free of lotions, fragrances, parabens, alcohol, dyes & elemental chlorine; does not contain phenoxyethanol or MIT
# //EZ Pull 1-Handed Dispensing: one-handed dispensing makes it easy to grab wipes without wasting sheets; packaging may vary from images shown',
#     price: 16.79,
#     department: 'Baby',
#     picture_url: 'https://m.media-amazon.com/images/I/816Qm+QszcS._AC_SL1500_.jpg'
# )

# Product.create!(
#     name: 'Huggies Baby Diapers, Little Movers, Multi-Color, Size 3, 156 Count',
#     description: 'Huggies Little Movers baby diapers size 3 fit babies 16-28 lb. (7-13 kg)
# //#1 Fitting Diaper* features 5-Way Fit System with contoured shape to move with baby & virtually eliminate leaks (*Wet Fit, Among Open Diapers)
# //DryTouch Liner absorbs wetness on contact & Leak Lock System helps prevent leaks for up to 12 hours
# //SnugFit Waistband & Double Grip Strips keep the diaper in place while baby is crawling, moving or walking
# //Huggies Pocketed Waistband helps prevent diaper blowouts (NB-Size 2), plus wetness indicator changes color when baby is ready for a diaper change
# //Fragrance free, lotion free, paraben free, and free of elemental chlorine & natural rubber latex
# //Huggies SizeUp indicator lets you know when baby needs to move to the next size diaper
# //Packaging may vary from image shown',
#     price: 49.11,
#     department: 'Baby',
#     picture_url: 'https://m.media-amazon.com/images/I/81dW0k80kWL._AC_SL1500_.jpg'
# )

# Product.create!(
#     name: 'Baby Wipes, Unscented, Huggies Simply Clean Fragrance-Free Baby Diaper Wipes, 11 Flip Lid Packs (704 Wipes Total)',
#     description: '11 flip lid packs of 64 unscented baby wipes (704 wipes total); Family Wipes – Great for hands, faces, bottoms & everyday surfaces with a gentle & reliable clean for the whole family
# //Grab & Go – Cleans messes here, there, and everywhere; take these unscented baby diaper wipes wherever you take messes
# //No Harsh Ingredients – Free of lotions, fragrances, parabens, alcohol & dyes, and elemental chlorine; does not contain MIT or phenoxyethanol. Safe for Sensitive Skin – Made with 99% triple-filtered water, these versatile wipes are gentle on your childs sensitive skin
# //pH Balanced – Hypoallergenic, dermatologically tested & pH balanced to help maintain healthy skin
# //Simply Clean Wipes are available in fragrance-free and fresh scent varieties; Plant-based wipes since 1990; packaging may vary from image shown',
#     price: 17.27,
#     department: 'Baby',
#     picture_url: 'https://m.media-amazon.com/images/I/81f79OfUsrS._AC_SL1500_.jpg'
# )

# Product.create!(
#     name: 'Newborn Baby Diapers (128ct) & Size 1 (198ct), Huggies Little Snugglers',
#     description: 'Pack includes Huggies Little Snugglers baby diapers size newborn (128ct) and size 1 (198ct)
# //GentleAbsorb Liner provides absorbent layer of protection with premium softness & breathability for sensitive skin
# //Huggies Pocketed Waistband helps prevent diaper blowouts & contains the mess
# //Leak Lock System helps prevent leaks for up to 12 hours, plus wetness indicator changes color when baby is ready for a diaper change
# //Fragrance free, lotion free, paraben free, and free of elemental chlorine & natural rubber latex
# //Now with Double Grip Strips that help keep the diaper in place while crawling, moving or walking (Size 2+)
# //Packaging may vary from image shown',
#     price: 92.39,
#     department: 'Baby',
#     picture_url: 'https://m.media-amazon.com/images/I/81mWY1Ciy1L._AC_SL1500_.jpg'
# )

# Product.create!(
#     name: 'Baby Wipes, Huggies Natural Care Sensitive Baby Diaper Wipes, Unscented, Hypoallergenic, 8 Flip-Top Packs (448 Wipes Total)',
#     description: '8 flip-top packs of 56 Huggies Natural Care Sensitive Baby Wipes, Unscented (448 wipes total); National Eczema Association Seal of Approval
# //Plant-Based Wipes since 1990: Huggies Natural Care Baby Wipes are plant-based & 99% purified water for a gentle clean
# //Safe for sensitive skin: hypoallergenic & dermatologically tested, unscented diaper wipes are infused with aloe & vitamin E; wipes are pH balanced to help maintain healthy skin
# //No harsh ingredients: free of lotions, fragrances, parabens, alcohol, dyes & elemental chlorine; does not contain phenoxyethanol or MIT
# //EZ Pull 1-Handed Dispensing: one-handed dispensing makes it easy to grab wipes without wasting sheets; packaging may vary from images shown',
#     price: 19.20,
#     department: 'Baby',
#     picture_url: 'https://m.media-amazon.com/images/I/81Omr8b8k5S._AC_SL1500_.jpg'
# )

# Product.create!(
#     name: 'Diapers Newborn/Size 1 (8-14 lb), 252 Count - Luvs Ultra Leakguards Disposable Baby Diapers, ONE MONTH SUPPLY',
#     description: 'Triple Leakguards help stop leaks before they happen
# //Nightlock Technology locks away wetness for up to 12 hours of overnight protection
# //Secure & Stretchy Sides With Comfy Leak Barrier Cuffs
# //Wetness Indicator turns blue when wet, telling you when your baby needs a change
# //No Parabens, No Latex Natural Rubber',
#     price: 37.95,
#     department: 'Baby',
#     picture_url: 'https://m.media-amazon.com/images/I/81dU1e1xi0L._AC_SL1500_.jpg'
# )

# Product.create!(
#     name: 'Amazon Brand - Mama Bear Gentle Touch Diapers, Hypoallergenic, Size 1, 49 Count',
#     description: '49 size 1 diapers for babies 8-14 lbs (4-6 kg); Each pack contains both star and polka dot band designs
# //First-time users, consider getting the size your cub currently wears. If the fit is snug, size up (which provides extra absorbency)
# //Hypoallergenic and dermatologist tested
# //Free from chlorine bleaching, perfumes, lotions, parabens, and phthalates
# //Diapers at a great value with excellent leakage protection, day or night; Wetness indicator shows when it’s time for a change
# //Thin design with flexible fit for comfortable movement; Umbilical cord cut-out protects baby’s belly button
# //Breathable outer cover helps keep baby’s skin dry and healthy',
#     price: 8.99,
#     department: 'Baby',
#     picture_url: 'https://m.media-amazon.com/images/I/51Vs9hk5xLL._AC_SL1000_.jpg'
# )

# # Beauty & Personal Care:
# Product.create!(
#     name: 'Black Disposable Face Masks, 100 Pack Black Face Masks 3 Ply Filter Protection Black Disposable Face Masks, 100 Pack Black Face Masks 3 Ply Filter Protection',
#     description: 'Face mask,Three layers of protection, made of melt-spray filter layer and non-woven fabric.
# //Black disposable face mask,Surface is evenly covered with air pores, good breathability.
# //Black mask,Adjustable soft nose clip design fits the face better. providing you with comfortable wearing experience。
# //Disposable face masks,breathing space that meets the needs of different facial contours, and can be used by students and adults.
# //Black face mask,Suitable for most public places and provides protection for your travel.',
#     price: 9.99,
#     department: 'Beauty & Personal Care',
#     picture_url: 'https://m.media-amazon.com/images/I/71FIeKwQ40L._SL1500_.jpg'
# )
# Product.create!(
#     name: 'REVLON One-Step Hair Dryer And Volumizer Hot Air Brush, Black',
#     description: 'Style, Dry & Volumize Your Hair in One Step, Max Drying Power with 30% Less Frizz and helps reduce hair damage
# //Unique Non-Detachable Oval Brush Design for Smoothing the Hair, while the round edges create volume. Designed with Nylon Pin & Tufted Bristles for detangling, improved volume, and control
# //3 Heat/Speed Settings with Cool option for styling flexibility
# //Safety First: The Revlon One Step Hair Dryer and Volumizer meets U.S. safety requirements and features the ETL Certification, unit is designed for 120 Volt USA outlets only. DO NOT use a voltage converter or adapter as it will damage the unit
# //1100 Watts of Power - Note that wattage of this appliance may vary depending on the location of use
# //Volumizer Care: Clean air inlet regularly, remove hair from the brush after every use and do not wrap cord around the unit. To keep bristles in best condition let unit cool before storing',
#     price: 59.99,
#     department: 'Beauty & Personal Care',
#     picture_url: 'https://m.media-amazon.com/images/I/71aXzv34N+L._SL1500_.jpg'
# )
# Product.create!(
#     name: 'Lash Princess False Lash Effect Mascara | Gluten & Cruelty Free, Limited Edition Pack of 1',
#     description: 'Color	False Lash Effect
# //Unit Count 1.00 Count
# //Brand	Essence cosmetics
# //Item Form	Mascara',
#     price: 2.35,
#     department: 'Beauty & Personal Care',
#     picture_url: 'https://m.media-amazon.com/images/I/61DPYAyw9UL._SL1500_.jpg'
# )
# Product.create!(
#     name: 'Mighty Patch Original from Hero Cosmetics - Hydrocolloid Acne Pimple Patch for Zits and Blemishes, Spot Treatment Stickers for Face and Skin, Vegan and Cruelty Free (36 Count)',
#     description: 'The Original Award-Winning Acne Patch -- Mighty Patch is a hydrocolloid sticker that improves the look of pimples overnight. No popping necessary. Just stick it on, get some beauty sleep, and wake up with clearer-looking skin
# //Results in 6-8 Hours -- Absorbs more pimple gunk thanks to our super-premium medical-grade hydrocolloid. Clinically tested, drug-free, and totally gentle
# //All-Night Adhesion -- Strong enough to stay on through a whole night of tossing, turning, and pillow-squishing. Easy to remove in the AM with zero redness or irritation
# //Blends Seamlessly into Skin -- Ultra-thin sticker with a translucent matte finish that keeps your pimple under wraps day or night. So comfortable, you’ll forget it’s even there
# //Peace-Of-Mind Design -- Our hydrocolloid patches are UV sterilized, non-toxic, and allergy tested. Each box comes with 36 medium dots (12 millimeters) on easy-peel perforated sheets',
#     price: 12.99,
#     department: 'Beauty & Personal Care',
#     picture_url: 'https://m.media-amazon.com/images/I/610P97tURsL._SL1500_.jpg'
# )
# Product.create!(
#     name: 'Neutrogena Day & Night Wipes with Makeup Remover Face Cleansing Towelettes & Night Calming Facial Cloths, Alcohol-Free Wipes to Remove Dirt, Oil & Waterproof Mascara, 3 Packs of 25 ct, 75 ct',
#     description: '3-pack which includes two 25-count packs of Neutrogena Makeup Remover Cleansing Towelettes and one 25-count pack of Neutrogena Makeup Remover Night Calming Cleansing Towelettes
# //Dissolve all traces of dirt, oil & makeup--even stubborn waterproof mascara--with these daily facial cleansing towelettes that are designed to thoroughly cleanse without any heavy residue, so theres no need to rinse
# //The unique calming scent of the nighttime face wipes is designed to help you unwind after a long, stressful day and leave you feeling relaxing and prepared for a good nights sleep
# //Formulated to be gentle on the eyes, facial wipes are safe enough for use by contact lens wearers and are designed with superior skin cleansing technology
# //Ultra-soft nourishing cloths feature an alcohol-free formula to cleanse while also being gentle on the face, and are ophthalmologist-, dermatologist-, and allergy-tested',
#     price: 16.39,
#     department: 'Beauty & Personal Care',
#     picture_url: 'https://m.media-amazon.com/images/I/81jNQomAvPL._SL1500_.jpg'
# )
# Product.create!(
#     name: 'Schick Hydro Silk Touch-Up Multipurpose Exfoliating Dermaplaning Tool, Eyebrow Razor, and Facial Razor with Precision Cover, 3 Count (Packaging May Vary)',
#     description: 'Touch-ups are quick and easy with this versatile beauty tool that shapes eyebrows, removes fine hairs, and even smoothens skin
# //High quality blades are uniquely designed with fine micro guards to help protect skin.Care and Cleaning: Rinse Clean
# //Includes an extra attachment for precise eyebrow shaping.Keep out of reach of children
# //Smooths skin by gently exfoliating. Care-soften area with lotion or shaving cream before shaving. Power Source: Manual
# //Slim, portable size so you are ready for a touch-up anytime, anywhere',
#     price: 6.99,
#     department: 'Beauty & Personal Care',
#     picture_url: 'https://m.media-amazon.com/images/I/819Zt6VqJYL._SL1500_.jpg'
# )
# Product.create!(
#     name: 'CeraVe Moisturizing Cream and Hydrating Face Wash Trial Combo | 12oz Cream + 3oz Travel Size Cleanser',
#     description: '[ MOISTURIZING CREAM & HYDRATING FACE WASH BUNDLE ] Contains 12oz CeraVe Moisturizing Cream Plus a 3oz Travel Size of CeraVe Hydrating Facial Cleanser
# //[ ESSENTIAL CERAMIDES ] Making up 50% of the skins natural barrier, ceramides are essential to maintaining healthy skin. All CeraVe products are formulated with three essential ceramides (1, 3, 6-II) to help restore the protective skin barrier
# //[ DRY SKIN RELIEF ] A deficiency of ceramides in the skin can often be associated with dry skin, which can feel itchy and look flaky. CeraVe Moisturizing Cream was shown to increase the skins level of ceramides after 4 weeks
# //[ DERMATOLOGIST RECOMMENDED ] CeraVe Skincare is developed with dermatologists and has products suitable for dry skin, sensitive skin, oily skin, acne-prone, and more
# //[ GENTLE ON SKIN ] Both products included in a Bundle are free of fragrance, allergy-tested, non-comedogenic, and suitable for use on the face and/or body',
#     price: 14.99,
#     department: 'Beauty & Personal Care',
#     picture_url: 'https://m.media-amazon.com/images/I/61rMMf2pyjL._SL1000_.jpg'
# )
# Product.create!(
#     name: 'Maybelline Instant Age Rewind Eraser Dark Circles Treatment Multi-Use Concealer, Ivory, 0.2 Fl Oz (Pack of 1)',
#     description: 'Maybelline Instant Age Rewind Concealer: Americas Number 1 Concealer; Erase the look of dark circles, correct the appearance of redness and brighten the look of dull skin with Instant Age Rewind Eraser multi-use concealer
# //Anti-Aging Concealer: Turn back time with this anti-aging under eye treatment concealer infused with Haloxyl; Say bye bye to the look of fine lines, blemishes, redness, and dark circles, and hello to a radiant, well rested, refreshed looking eye area
# //Best Face Forward: Maybelline has sheer, medium, and full coverage foundation in liquid, stick, and cushion foundation formulas, and a range of concealers, plus face primers, contour, highlighter, and pressed powder to help you create a perfect canvas
# //Maybelline has what you need to create any look: foundation, bb cream, concealer and highlighter to create a perfect canvas, eyeshadow, brow pencils and eyeliner for any eye look and lip products, from show stopping matte lipstick to au natural lip balms
# //Remove Maybelline Makeup With Micellar Water: Use Garnier Micellar Water as a gentle makeup remover at night, and as a facial cleanser in the morning to prep skin for Maybelline makeup',
#     price: 9.99,
#     department: 'Beauty & Personal Care',
#     picture_url: 'https://m.media-amazon.com/images/I/61E9G9+lUML._SL1500_.jpg'
# )
# Product.create!(
#     name: 'Wahl Color Pro Cordless Rechargeable Hair Clipper & Trimmer - Easy Color-Coded Guide Combs - for Men, Women & Children - Model 9649',
#     description: 'Cordless Convenience – Color Pro Cordless is rechargeable and wireless. Cord/Cordless allows you to use the clipper on the battery or when its charging. Taper Lever: No
# //Color Coded Guide Combs – Finding and remembering everyone’s favorite hair length is easier than ever. Corresponding the correct comb to the right cutting length is simple with our easy to see attachment guards
# //Hygienic Grooming – Since our blades are removable and rinsable they are easy to clean. Simply run them under water to wash away excess clippings and trimmings
# //Smooth, Easy Haircuts – With a variety of cutting lengths, adjusting the trim length is pain free. Quickly reference the color key on the face of the clipper and attach the corresponding colored clipper comb attachment
# //Grooming on the Go – With 60 minutes of run time, our Cordless Color Pro is great for travel, vacation, business trips, and more. Worldwide voltage means you can use no matter what country you’re in, 220v or dual voltage',
#     price: 19.90,
#     department: 'Beauty & Personal Care',
#     picture_url: 'https://m.media-amazon.com/images/I/91aqDkw8oYL._SL1500_.jpg'
# )
# Product.create!(
#     name: 'Bio-Oil Skincare Oil, Body Oil for Scars and Stretch Marks, Hydrates Skin, Non-Greasy, Dermatologist Recommended, Non-Comedogenic, Travel Size, 0.85 Ounces, Pack of 3, For All Skin Types, Vitamin A, E',
#     description: 'IMPROVES APPEARANCE OF ACNE SCARS AND STRETCH MARKS - Clinically proven and dermatologist recommended to help repair skin damage and scars from pregnancy, surgery, injury, acne, C-section, aging, and more. Bio-Oil is non comedogenic so it can be used as an acne scar treatment for face and skin repair. So, if you have extra time to organize your skin care cabinet, keep Bio-Oil front and center as your go-to acne scar remover
# //CAREFULLY FORMULATED, NATURAL BODY OIL - Vitamin A Oil and Vitamin E Oil for skin help maintain healthy looking skin while natural Chamomile Oil, Sunflower Oil, and Lavender Oil calm, soothe, and cleanse damaged skin and with anti-inflammatory protection. There are also many benefits associated with using Vitamin E Oil for hair. These hair treatment oils have reduced thickness for easy application. While Bio-Oil Skincare Oil absorbs fast, take all the time you need to pamper your skin. Indulge in the relaxation of a little at-home massage and ultra-soft skin
# //LOCKS IN ESSENTIAL MOISTURE WITHOUT CLOGGING PORES - Uniquely formulated, non-greasy body oil that hydrates skin and helps retain essential moisture in cuticles and nails. Bio-Oil helps repair scars without clogging your pores. Effective acne scar healer and anti-aging face moisturizer for women.
# //HELPS SMOOTH UNEVEN SKIN TONES - Works naturally with the texture and rhythm of your skin to help improve the appearance of your uneven skin tones. Works for light and dark skin tones. Mineral oil, one of Bio-Oils base oils, works both as an emollient, which keeps the skin soft and smooth, and as a moisturizer, which prevents the development of dry skin. Make Bio-Oil part of your new normal
# //FORMULATED FOR ALL SKIN TYPES - Keep Bio-Oil Skincare Oil on-hand to ensure the whole household is covered. Helps soften skin and repairs damage for all types, tones, textures, and areas of your skin.',
#     price: 17.97,
#     department: 'Beauty & Personal Care',
#     picture_url: 'https://m.media-amazon.com/images/I/51O7DvtsDZL.jpg'
# )

# # Cell Phones & Accessories:
# Product.create!(
#     name: 'Ailun Glass Screen Protector Compatible for iPhone 11/iPhone XR, 6.1 Inch 3 Pack Tempered Glass',
#     description: 'WORKS FOR iPhone 11/iPhone XR (2019/2018 release) 6.1 Inch display ,0.33mm tempered glass screen protector. Featuring maximum protection from scratches, scrapes, and bumps.
# //Specialty: Due to the rounded design of the iPhone 11/XR and to enhance compatibility with most cases, the Tempered glass does not cover the entire screen. HD ultra-clear 99.99% touch-screen accurate.
# //hydrophobic and oleophobic screen coating protects against sweat and oil residue from fingerprints.
# //It is 100% brand new,Precise laser cut tempered glass, exquisitely polished,2.5D rounded edges.
# //Online video installation instruction can be found at the last image slot: Easiest Installation - removing dust and aligning it properly before actual installation,no worrying about bubbles,enjoy your screen as if it wasnt there.',
#     price: 10.99,
#     department: 'Cell Phones & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/81MZ5D1wHpL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Apple 20W USB-C Power Adapter',
#     description: 'The Apple 20W USB‑C Power Adapter offers fast, efficient charging at home, in the office, or on the go.
# //While the power adapter is compatible with any USB‑C enabled device, Apple recommends pairing it with the 11-inch iPad Pro and 12.9-inch iPad Pro (3rd generation) for optimal charging performance.
# //You can also pair it with iPhone 8 or later to take advantage of the fast-charging feature.
# //Charging cable sold separately.',
#     price: 19.00,
#     department: 'Cell Phones & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/41iWogJnZQL._AC_SL1000_.jpg'
# )
# Product.create!(
#     name: 'USB Charging Station Dock 6Port Fast Charge Docking Station for Multiple Devices Multi Device Charger Organizer Compatible with iPad iPhone and Android Cell Phone and Tablet',
#     description: '6 HIGH SPEED SMART USB CHARGING PORTS: utilize SMARTFLOW TECHNOLOGY; embedded smart IC chipsets enable each port to detect the need of the connected device, and assign the maximum full charging speed up to 2.4A
# //SAFETY CHARGING HUB FOR ANY USB POWERED DEVICE: 6 slots, hold and charge 6 devices simultaneously; Ideal charging station for iPhone, iPad, tablets, android devices, cameras, smart watch, power bank, kindle fire, Bluetooth speakers and headset
# //STAY ORGANIZED AND NEAT: Anti-scratch non-slippery silicone pads hold and organize up to 6 devices stable and safe during charging; the pad turns blue lighted while the device is connected
# //UNIVERSAL CHARGING STATION FOR MULTIPLE DEVICES: This USB charging station is designed to charge universal iOS & Android smartphones, tablets and any more USB devices. Internationally compatible AC 100-240V power supply Detachable Baffles: You can arrange the devices as needed via the detachable baffles, between which the slots are wide enough to hold your phones / tablets with case on
# //Safe & Steady Charging: Built-in surge protection against overcharging, surges and overheating, ensures steady power output to each device. 6 ports totally 40 watts of power guarantee Multi-Device charging Package Included: 1×Charging Station, 1×Power Cord',
#     price: 79.99,
#     department: 'Cell Phones & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/71Q617ar2+L._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Trianium Screen Protector Compatible for iPhone 13 / iPhone 13 Pro 2021 3 Pack 6.1 inch Tempered Glass 9H Film - HD (w/Alignment Case Tool included)',
#     description: '[3 Pack Tempered Glass Screen Protector] Compatible with Apple iPhone 13 & iPhone 13 Pro 2021 6.1" Display.
# //Super-Slim: Premium tempered glass screen protectors are ultra-thin, high-quality, and extremely protective making them the all-around go-to protector for iPhone 2021.
# //Anti-Scratch Surface - A durable and reliable anti-scratch surface will help prevent scratches to the screen during daily-wear-and-tear, minor or accidental drops, and even tight pockets. Keep the screen free from scuffs and scratches.
# //Face ID Compatibility - Fully supports full frontal face id compatibility coupled with the rest of the latest iPhone software and premium functionality that is exclusive to the series. Experience full screen protection with a powerful protector that is compatible with all iPhone features.
# //Special Screen Coating - A specialized dual screen coating for elimination of oils, sweat, fingerprints, and liquids on the screen. Both oleophobic and hydrophobic coatings help keep the screen clean and pristine at all times.
# //Easy Installation Kit - A fun, fast, and simple installation kit can make the installation process quick in under 2 minutes. A special alignment frame and kit is easy to install for anyone.
# //Case-friendly tempered glass durability rated at 9H hardness. Compatible with most protective slim case.',
#     price: 9.95,
#     department: 'Cell Phones & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/51chV1BJHXL._AC_SL1000_.jpg'
# )
# Product.create!(
#     name: 'Ailun Glass Screen Protector Compatible for iPhone 13/13 Pro [6.1 Inch] Display 3 Pack Tempered Glass,Case Friendly',
#     description: 'WORKS FOR iPhone 13/13 Pro 6.1 Inch Display Screen 2021 0.33mm tempered glass screen protector. Featuring maximum protection from scratches, scrapes, and bumps.
# //Specialty:to enhance compatibility with most cases, the Tempered glass does not cover the entire screen. HD ultra-clear rounded glass for iPhone 13/13 Pro is 99.99% touch-screen accurate.
# //99.99% High-definition clear hydrophobic and oleophobic screen coating protects against sweat and oil residue from fingerprints.
# //It is 100% brand new,Precise laser cut tempered glass, exquisitely polished,2.5D rounded edges.
# //Online video installation instruction: Easiest Installation - removing dust and aligning it properly before actual installation,no worrying about bubbles,enjoy your screen as if it wasnt there.',
#     price: 7.99,
#     department: 'Cell Phones & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/71OicfvCsbL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: '2-Pack Miady 10000mAh Dual USB Portable Charger, Fast Charging Power Bank with USB C Input, Backup Charger for iPhone X, Galaxy S9, Pixel 3 and etc',
#     description: '【2-Pack 10000mAh Power Bank】Two 10000mAh battery packs not only for portable charging but also around the home. Allowing you charge mobile devices without having to be tethered to a plug socket. Each of them fully charges 2.4 times for iPhone X, 3.6 times for iPhone 8 and 2.2 times for Samsung Galaxy S9.
# //【Dual Output & Input】Each has 2 USB output ports that detect all the connected devices and efficiently distributes the current output up to 5V 2.4A. The USB C and Micro USB ports can fully refill the battery itself in 5 hrs at 5V 2.0A.
# //【Reliable Li-polymer Cell】Thanks to the Li-polymer battery pack, the charger is much safer than any Li-ion charger. Also, its lighter and slimer that you can easily carry it around, even on airplanes.
# //【Small & Slim】It feels incredibly compact for a 10000mAh power bank, weighing just 218g and only 14mm thick. Grippy design is easy to hold, easy to toss into a bag and incredibly portable.
# //【What You Get】2 * Miady 10000mAh USB Portable Charger (White & Black); 2 * USB Cable; 1 * User Manual. We provide 24*7 friendly customer support and also back our products for 18 months.',
#     price: 19.99,
#     department: 'Cell Phones & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/61hZ-Gu2hEL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Mkeke Compatible with iPhone XR Screen Protector, iPhone 11 Screen Protector, Tempered Glass Film for Apple iPhone XR and iPhone 11, 3-Pack Clear',
#     description: 'Made iPhone xr & iPhone 11 - The Screen Protector covers your iPhones iPhone XR 6.1" display, and is case-friendly due to the open edge design. Wear your favorite case and keep your screen protected at the same time! (ONLY Compatible with iPhone XR 6.1" Size)
# //Specialty: Due to the rounded design of the iPhone XR & iPhone 11 and to enhance compatibility with most cases, the Tempered glass does not cover the entire screen. HD ultra-clear rounded glass for iPhone XR (6.1inch 2018 release) is 99.99% touch-screen accurate.
# //Glass Screen Protector for iPhone xr & iPhone 11: High-definition clear hydrophobic and oleophobic screen coating protects against sweat and oil residue from fingerprints.
# //Easy installation: - it’s super easy to install! Comes with an installation guidance frame to assist with the application process.
# //Mkeke to protect your iPhone xr & iPhone 11 Screen against defects and damage',
#     price: 8.98,
#     department: 'Cell Phones & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/71nK-Ti90+L._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Misxi 2 Pack Hard PC Case with Tempered Glass Screen Protector Compatible with Apple Watch Series 6 SE Series 5 Series 4 40mm, 1 Blue + 1 Transparent',
#     description: 'Compatible model: Compatible with apple watch series 6/5/4/SE 40mm.
# //Touch sensitivity: The touching of the screen protector is responsive, giving you a bare metal touch.
# //Install instruction: You can perfectly install the protective cover on your apple watch with no experience needed. It is convenient to install and take off.
# //Anti-shock and Anti-fall: Made of PC material and built-in tempered glass, this case covers the full front and curved edges of the watch and gives your iwatch full protection.
# //Kindly tips: Check out the screen under the sticker for cracks, scratches and other damages when you peel off this layer before application. If you find any scratches/cracked/damages, please feel free to contact us directly.',
#     price: 10.99,
#     department: 'Cell Phones & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/71qWHm7tlZS._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Ailun 2 Pack Screen Protector Compatible for iPhone 13 Pro Max [6.7 inch] Display 2021 with 2 Pack Tempered Glass Camera Lens Protector,[9H Hardness]-HD',
#     description: 'Works For iPhone 13 Pro Max 6.7 Inch display 2021 tempered glass screen protector and camera lens protector.Featuring maximum protection from scratches, scrapes, and bumps.
# //Night shooting function: specially designed iPhone 13 Pro Max camera lens protective film. The camera lens protector adopts the new technology of "seamless" integration of augmented reality, with light transmittance and night shooting function, without the need to design the flash hole position, when the flash is turned on at night, the original quality of photos and videos can be restored.
# //It is 100% brand new,Precise laser cut tempered glass, exquisitely polished,0.33mm ultra-thin tempered glass screen protector maintains the original response sensitivity and touch, bringing you a good touch experience.
# //Easiest Installation - Please watch our installation video tutorial before installation.Removing dust and aligning it properly before actual installation,no worrying about bubbles,enjoy your screen as if it wasnt there.
# //99.99% High-definition clear hydrophobic and oleophobic screen coating protects against sweat and oil residue from fingerprints and enhance the visibility of the screen.',
#     price: 8.89,
#     department: 'Cell Phones & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/71ncIkBW8qL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Ailun Glass Screen Protector Compatible for iPhone 12/iPhone 12 Pro 2020 6.1 Inch 3 Pack Case Friendly Tempered Glass',
#     description: 'WORKS FOR iPhone 12/iPhone 12 Pro 2020 6.1 Inch 0.33mm tempered glass screen protector. Featuring maximum protection from scratches, scrapes, and bumps.
# //Specialty:to enhance compatibility with most cases, the Tempered glass does not cover the entire screen. HD ultra-clear rounded glass for iPhone 12/iPhone 12 Pro 2020 is 99.99% touch-screen accurate.
# //99.99% High-definition clear hydrophobic and oleophobic screen coating protects against sweat and oil residue from fingerprints.
# //It is 100% brand new,Precise laser cut tempered glass, exquisitely polished,2.5D rounded edges.
# //Online video installation instruction: Easiest Installation - removing dust and aligning it properly before actual installation,no worrying about bubbles,enjoy your screen as if it wasnt there.',
#     price: 7.89,
#     department: 'Cell Phones & Accessories',
#     picture_url: 'https://m.media-amazon.com/images/I/81npNMXFqXL._AC_SL1500_.jpg'
# )

# # Clothing, Shoes & Jewelry:
# Product.create!(
#     name: 'Hanes Mens EcoSmart Sweatshirt',
#     description: '50% Cotton, 50% Polyester
# //Imported
# //Machine Wash
# //Cozy 7.8-ounce fleece made with up to 5 percent polyester created from recycled plastic
# //Pill-resistant fabric with high-stitch density for durability
# //Lay flat collar keeps its shape wash after wash
# //All the comfort of Hanes with our famous tag-free collar
# //Either tagless or with easily remove the tear away tag for comfort',
#     price: 11.00,
#     department: 'Clothing, Shoes & Jewelry',
#     picture_url: 'https://m.media-amazon.com/images/I/81fBr0EGoQL._AC_UY879_.jpg'
# )
# Product.create!(
#     name: 'Carhartt Mens Knit Cuffed Beanie',
#     description: '100% Acrylic
# //Imported
# //No Closure closure
# //Hand Wash Only
# //Carhartt label sewn on front',
#     price: 32.99,
#     department: 'Clothing, Shoes & Jewelry',
#     picture_url: 'https://m.media-amazon.com/images/I/91VeMvrRQML._AC_UX679_.jpg'
# )
# Product.create!(
#     name: 'Gildan Mens Ultra Cotton Long Sleeve T-Shirt, Style G2400, Multipack',
#     description: 'Solids: 100% Cotton; Ash Grey: 99% Cotton, 1% Polyester; Sport Grey and Antique Heathers: 90% Cotton, 10% Polyester; Safety Colors and Heathers: 50% Cotton, 50% Polyester
# //Imported
# //No Closure closure
# //Machine Wash
# //Heavyweight 6 oz. per sq. yd. fabric made from 100% US cotton
# //Featuring taped neck and shoulders and double-needle 7/8’’ collar and bottom hem for long-lasting comfort and durability
# //Classic fit delivers all the breathable comfort you want',
#     price: 41.00,
#     department: 'Clothing, Shoes & Jewelry',
#     picture_url: 'https://m.media-amazon.com/images/I/71wfwoW-OoL._AC_UX679_.jpg'
# )
# Product.create!(
#     name: 'Fruit of the Loom Womens Tag Free Cotton Brief Panties (Regular & Plus Size)',
#     description: '100% Cotton
# //Imported
# //Pull On closure
# //Machine Wash
# //Woven with Finer Yarn for Extra Softness
# //Soft, Ravel-Free Waistband
# //100% Cotton Liner
# //Tag Free
# //Assorted Colors and Prints May Vary',
#     price: 12.00,
#     department: 'Clothing, Shoes & Jewelry',
#     picture_url: 'https://m.media-amazon.com/images/I/71D2Cidr--S._AC_UY879_.jpg'
# )
# Product.create!(
#     name: 'Hanes Mens Beefy Long Sleeve Henley Shirt',
#     description: '100% Cotton
# //Imported
# //Button closure
# //Machine Wash
# //Henley sports a contrast color three-button placket
# //Famously durable beefy fabric
# //Tag less long sleeve for the ultimate in comfort',
#     price: 11.99,
#     department: 'Clothing, Shoes & Jewelry',
#     picture_url: 'https://m.media-amazon.com/images/I/81RRZ66AuuL._AC_UY879_.jpg'
# )
# Product.create!(
#     name: 'Legendary Whitetails Mens Buck Camp Flannel Shirt',
#     description: '100% Cotton
# //Imported
# //PERFECT WEIGHT: Weighing in at 5.1 ounces, the Buck Camp Flannel Shirt is the perfect weight to be worn alone or layered, indoors or outside; youre gonna love this comfortable brushed cotton flannel shirt
# //DURABLE QUALITY: Our signature corduroy lined collar and cuffs not only look cool, but add stablility. which means they will hold their shape so you dont have to iron
# //TRADITIONAL STYLE: The classic single pocket design gives you a clean look while providing an option for storage; use the pencil slot to hold your pencil when scoring on the range, or for your sunglasses when not in use
# //RELAXED FIT: This flannel shirt includes the right amount of room in all the right places, so it can be worn tucked in or untucked; it features a double pleated back to prevent tugging
# //100% SATISFACTION GUARANTEE: Designed in the USA, Legendary Whitetails is an American small business. We take pride in all our products',
#     price: 34.99,
#     department: 'Clothing, Shoes & Jewelry',
#     picture_url: 'https://m.media-amazon.com/images/I/91zk5Y2RsGL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Hanes Mens Pullover EcoSmart Hooded Sweatshirt',
#     description: '50% cotton/50% polyester, with up to 5% polyester created from recycled plastic
# //Imported
# //Pull On closure
# //Machine Wash
# //Soft, durable fleece with double-needle cover-seamed neck and armholes stays strong when you work or play hard.
# //Machine wash it again and again without hesitation because its pill-resistant
# //Made with up to 5% polyester created from recycled plastic bottles.
# //Dyed-to-match drawcord.',
#     price: 13.59,
#     department: 'Clothing, Shoes & Jewelry',
#     picture_url: 'https://m.media-amazon.com/images/I/61GiJTR9PjL._AC_UX679_.jpg'
# )
# Product.create!(
#     name: 'Fruit of the Loom Mens Eversoft Fleece Sweatshirts & Hoodies',
#     description: 'Ring Spun Cotton,Fleece
# //Imported
# //Male Model is 6’0” wearing a Size Medium. Female Model is 5’9” wearing size Small.
# //EverSoft Ring Spun Cotton Provides Premium Softness Wash after Wash
# //Double-needle stitching on the neck and hems for durability
# //Ribbed collar, cuffs, and waistband that hold their shape
# //Shoulder-to-shoulder neck tape for comfort and durability',
#     price: 21.98,
#     department: 'Clothing, Shoes & Jewelry',
#     picture_url: 'https://m.media-amazon.com/images/I/81Z7cAVdxGL._AC_UY879_.jpg'
# )
# Product.create!(
#     name: 'Gildan Mens Fleece Hooded Sweatshirt, Style G18500',
#     description: '50% Cotton, 50% Polyester
# //Imported
# //Not
# //Pull On closure
# //Machine Wash
# //Classic fit
# //Featuring double-needle stitched shoulders, armholes, neck, 1 x1 ribbed cuffs and waistband with spandex for long-lasting comfort and durability',
#     price: 14.97,
#     department: 'Clothing, Shoes & Jewelry',
#     picture_url: 'https://m.media-amazon.com/images/I/91wMul0UyLL._AC_UY879_.jpg'
# )
# Product.create!(
#     name: 'Dickies Mens Dri-tech Moisture Control Crew Socks Multipack',
#     description: '78% Cotton, 19% Polyester, 2% Spandex, 1% Nylon
# //Imported
# //Machine Wash
# //Soft Breathable Moisture Control Fibers
# //Arch Compression Support and Stability
# //Ventilation Channels Enhance Air Flow
# //Durable Reinforced Heel and Toe
# //Fabric content may vary by color',
#     price: 25.98,
#     department: 'Clothing, Shoes & Jewelry',
#     picture_url: 'https://m.media-amazon.com/images/I/91cYxqBxehL._AC_UX679_.jpg'
# )

# # Computers:
# Product.create!(
#     name: 'HP 24-inch All-in-One Desktop Computer, AMD Athlon Silver 3050U Processor, 8 GB RAM, 256 GB SSD, Windows 10 Home (24-dd0010, White)',
#     description: 'Windows 10 Home: Do great things confidently with the familiar feel of Windows – only better
# //Fast processor: AMD Athlon Silver 3050U Processor, Dual-Core, 2.30 GHz
# //Memory and internal storage: 8 GB DDR4-2400 SDRAM (upgradable to 16 GB), 256 GB PCIe NVMe M.2 Solid State Drive
# //Environmentally conscious: Low halogen, mercury-free display backlights, arsenic-free display glass
# //Integrated display: 23.8" diagonal widescreen FHD (1920 x 1080) VA ZBD anti-glare WLED-backlit three-sided micro-edge monitor
# //Stereo speakers: Pump up the volume to your favorite music, movie or game
# //HP Privacy Camera: The pop-up webcam is only enabled when in use, securing your privacy',
#     price: 529.99,
#     department: 'Computers',
#     picture_url: 'https://m.media-amazon.com/images/I/81gjltwz-qL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: '2020 Apple Mac Mini with Apple M1 Chip (8GB RAM, 256GB SSD Storage)',
#     description: 'Apple-designed M1 chip for a giant leap in CPU, GPU, and machine learning performance
# //8-core CPU packs up to 3x faster performance to fly through workflows quicker than ever*
# //8-core GPU with up to 6x faster graphics for graphics-intensive apps and games*
# //16-core Neural Engine for advanced machine learning
# //8GB of unified memory so everything you do is fast and fluid',
#     price: 699.00,
#     department: 'Computers',
#     picture_url: 'https://m.media-amazon.com/images/I/71pcTYT+ICL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Dell OptiPlex 9020-SFF, Intel Core i5-4570 3.2GHZ, 16GB RAM, 512GB SSD Solid State, DVDRW, Windows 10 Pro 64bit (Renewed)',
#     description: 'This Certified Refurbished product is tested and certified to look and work like new. The refurbishing process includes functionality testing, basic cleaning, inspection, and repackaging. The product ships with all relevant accessories, a minimum 90-day warranty, and may arrive in a generic box. Only select sellers who maintain a high-performance bar may offer Certified Refurbished products on Amazon.com.
# //(4) USB 3.0, (6) USB 2.0
# //RJ-45, Serial Port, VGA, (2) Display Port, (2) PS/2
# //Keyboard and Mouse Included
# //Operating System: Windows 10 Pro 64 Bit – Multi-language supports English/Spanish/French.',
#     price: 252.99,
#     department: 'Computers',
#     picture_url: 'https://m.media-amazon.com/images/I/61pskHRSN2L._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Gamer Xtreme VR Gaming PC, Intel i5-10400F 2.9GHz, GeForce GTX 1660 Super 6GB, 8GB DDR4, 500GB NVMe SSD, Wi-Fi Ready & Windows 10 Home (GXiVR8060A10)',
#     description: 'System: Intel Core i5-10400F 2.9GHz 6-Core, Intel B460 Chipset, 8GB DDR4, 500GB PCI-E NVMe SSD, & Genuine Windows 10 Home 64-bit
# //NVIDIA GeForce GTX 1660 Super 6GB Video Card, 1x HDMI, & 1x DisplayPort
# //Connectivity: 6 x USB 3.1, 2 x USB 2.0, 1x RJ-45 Network Ethernet 10/100/1000, 802.11AC Wi-Fi. Audio: 7.1 Channel. Keyboard and mouse
# //Special feature: Tempered glass side case panel. RGB case lighting. RGB 7 colors, gaming mouse
# //1 year parts & labor. Free lifetime tech support
# //Connectivity technology: Wi-Fi Built-in',
#     price: 1083.48,
#     department: 'Computers',
#     picture_url: 'https://m.media-amazon.com/images/I/81Wx7hw9vwL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Acer Aspire TC-1660-UA92 Desktop | 10th Gen Intel Core i5-10400 6-Core Processor | 12GB 2666MHz DDR4 | 512GB NVMe M.2 SSD | 8X DVD | Intel Wireless Wi-Fi 6 | Bluetooth 5.2 | Windows 10 Home',
#     description: 'ROBUST COMPUTING HUB: Tackle any task—from basic computing to multimedia entertainment—every time you power up this beastly machine. Easily expandable and driven by an Intel Core i5 processor, it has the speed, power and storage to do more—everyday!
# //10th Generation Intel Core i5-10400 6-Core Processor (Up to 4.3GHz)
# //12GB 2666MHz DDR4 Memory | 512GB NVMe M.2 SSD | 8X DVD-Writer Double-Layer Drive (DVD-RW)
# //Intel Wireless Wi-Fi 6 AX201 802.11ax Dual-Band 2.4GHz and 5GHz featuring 2x2 MU-MIMO technology | Bluetooth 5.2 | 10/100/1000 Gigabit Ethernet LAN
# //1 - USB 3.2 Type C Gen 2 port (up to 10 Gbps) (Front) | 1 - USB 3.2 Gen 2 Ports (Front) | 2 - USB 3.2 Gen 1 Type A Ports (Rear) | 4 - USB 2.0 Ports (Rear) | 2 - HDMI Ports (Rear)
# //Windows 10 Home | USB Keyboard and Mouse Included',
#     price: 619.99,
#     department: 'Computers',
#     picture_url: 'https://m.media-amazon.com/images/I/616BXacLrRS._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: '2020 Apple Mac Mini with Apple M1 Chip (8GB RAM, 512GB SSD Storage)',
#     description: 'Apple-designed M1 chip for a giant leap in CPU, GPU, and machine learning performance
# //8-core CPU packs up to 3x faster performance to fly through workflows quicker than ever*
# //8-core GPU with up to 6x faster graphics for graphics-intensive apps and games*
# //16-core Neural Engine for advanced machine learning
# //8GB of unified memory so everything you do is fast and fluid',
#     price: 899.00,
#     department: 'Computers',
#     picture_url: 'https://m.media-amazon.com/images/I/71pcTYT+ICL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: '(Renewed) DELL Optiplex 7010 Business Desktop Computer (Intel Quad Core i5-3470 3.2GHz, 16GB RAM, 2TB HDD, USB 3.0, DVDRW, Windows 10 Professional',
#     description: 'Dell 7010 Intel I5 Quad-Core 3. 2 GHz Processor
# //Whats Inside: 16GB RAM, 2TB Hard Drive, DVW Optical Drive,
# //Operating System: Windows 10 Professional
# //Includes: USB Keyboard and Mouse',
#     price: 502.46,
#     department: 'Computers',
#     picture_url: 'https://m.media-amazon.com/images/I/61Zp2XEDwxL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'HP Elite Desktop PC Computer Intel Core i5 3.1-GHz, 8 gb Ram, 1 TB Hard Drive, DVDRW, 19 Inch LCD Monitor, Keyboard, Mouse, Wireless WiFi, Windows 10 (Renewed)',
#     description: 'POWERFUL PROCESSOR - Built with an Intel Core i5 processor, you can expect fast, reliable performance and an exceptional PC experience
# //SUPERIOR STORAGE AND MEMORY - Plenty of storage space to save your favorite media and still have tons of room to work. The high amount of memory will help you zip through your tasks in a hurry
# //BUILT IN CONNECTIVITY - Stay connected to the internet with installed wireless capable technology and integrated network card. Play your favorite tunes with stereo sound. Connect to large and multiple monitors thanks to onboard Display Port technology
# //WINDOWS 10 LATEST RELEASE - A new, clean installation completely free of bloatware that would have typically been installed from the OEM. Optional software such as Anti-Virus and Office 365 can be easily downloaded through the Windows App Store
# //CUSTOM TAILORED TOWARDS EVERYDAY USE - Ready for the things we all do the most. Browsing the internet, streaming movies and music, homework, storing photos, and much more',
#     price: 213.99,
#     department: 'Computers',
#     picture_url: 'https://m.media-amazon.com/images/I/61xhyNzcR1L._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Alarco Gaming PC Desktop Computer Intel i5 3.10GHz,8GB Ram,1TB Hard Drive,Windows 10 pro,WiFi Ready,Video Card Nvidia GTX 650 1GB, 6 RGB Fans with Remote',
#     description: '6 RGB Fan Gaming PC Desktop Computer With Remote
# //Runs Fortnite average 100 FPS on Low Settings and 60 FPS on medium settings. Runs Pubg average 30 FPS on low settings. Runs GTA5 average 30 FPS.
# //Intel Core i5-2400 3.10 Ghz
# //GTX 650 1GB Video Card With DVI, HDMI and VGA outputs.
# //1 Year Warranty.',
#     price: 529.99,
#     department: 'Computers',
#     picture_url: 'https://m.media-amazon.com/images/I/711MUuOhJiL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'OMEN 30L Gaming Desktop PC, NVIDIA GeForce RTX 3080 Graphics Card, 10th Generation Intel Core i9-10850K Processor, 32 GB RAM, 1 TB SSD and 2 TB Hard Drive, Windows 10 Home (GT13-0092, 2020)',
#     description: 'READY TO PLAY – Sure, skills are important, but with the OMEN 30L Desktop PC’s powerful processor, stunning graphics, and a large front fan you really can’t make any more excuses for losing
# //ULTIMATE GAMING – The GeForce RTX 3080 delivers the ultra-performance that gamers crave, powered by Ampere—NVIDIA’s 2nd gen RTX architecture; with 10 GB GDDR6X dedicated memory, your 4k gaming experience will never look smoother
# //MAKE IT YOURS – Let your desktop reflect your style with easy to upgrade hardware and OMEN Command Center’s growing list of customization and optimization features
# //POWERFUL PROCESSOR – Game, stream, create, and edit multimedia content faster than ever with 10th Generation Intel Core i9-10850K processor with liquid cooling
# //DUAL STORAGE OPTIONS – By including both 1 TB PCIe NVMe M.2 Solid State Drive for the operating system and 2 TB 7200RPM SATA hard drive, you get the benefits of both worlds—fast boot-up times, snappy responsiveness, and larger storage capacity
# //HYPERX DDR4 MEMORY – With 32 GB of RAM, everything from browsing multiple web pages to playing games gets a boost
# //VR READY – Enjoy optimal VR performance as your desktop is VR ready right out of the box',
#     price: 2899.00,
#     department: 'Computers',
#     picture_url: 'https://m.media-amazon.com/images/I/810naSDT+2L._AC_SL1500_.jpg'
# )

# # Electronics:

# Product.create!(
#     name: 'Fire TV Stick 4K streaming device with Alexa Voice Remote (includes TV controls), Dolby Vision',
#     description: 'Cinematic experience - Watch in vibrant 4K Ultra HD with support for Dolby Vision, HDR, and HDR10+.
# //Home theater audio with Dolby Atmos - Feel scenes come to life with support for immersive Dolby Atmos audio on select titles with compatible home audio systems.
# //Endless entertainment - Stream more than 1 million movies and TV episodes from Netflix, Prime Video, Disney+, Peacock, and more, plus listen to millions of songs. Subscription fees may apply.
# //Live and free TV - Watch live TV, news, and sports with subscriptions to SLING TV, YouTube TV, and others. Stream for free with Pluto TV, IMDb TV, YouTube and more.
# //Alexa Voice Remote - Search and launch content with your voice. Get to favorite apps quickly with preset buttons. Control power and volume with one remote.
# //Control your smart home - Ask Alexa to check weather, dim the lights, view live camera feeds, stream music and more.
# //Simple and intuitive - Quickly access your favorite apps, live TV, and things you use most, all from the main menu.
# //Easy to set up, compact enough to stay hidden - Plug in behind your TV, turn on the TV, and connect to the internet to get set up.',
#     price: 24.99,
#     department: 'Electronics',
#     picture_url: 'https://m.media-amazon.com/images/I/411y5UdVmvL._AC_SL1000_.jpg'
# )
# Product.create!(
#     name: 'Fire TV Stick 4K streaming device with Alexa Voice Remote (includes TV controls) | Dolby Vision',
#     description: 'Cinematic experience - Watch in vibrant 4K Ultra HD with support for Dolby Vision, HDR, and HDR10+.
# //Home theater audio with Dolby Atmos - Feel scenes come to life with support for immersive Dolby Atmos audio on select titles with compatible home audio systems.
# //Endless entertainment - Stream more than 1 million movies and TV episodes from Netflix, Prime Video, Disney+, Peacock, and more, plus listen to millions of songs. Subscription fees may apply.
# //Live and free TV - Watch live TV, news, and sports with subscriptions to SLING TV, YouTube TV, and others. Stream for free with Pluto TV, IMDb TV, YouTube and more.
# //Alexa Voice Remote lets you use your voice to search and launch shows across apps. Plus, control power and volume on your TV and soundbar with a single remote.
# //Control your smart home - Ask Alexa to check weather, dim the lights, view live camera feeds, stream music and more.
# //Simple and intuitive - Quickly access your favorite apps, live TV, and things you use most, all from the main menu.
# //Easy to set up, compact enough to stay hidden - Plug in behind your TV, turn on the TV, and connect to the internet to get set up.',
#     price: 24.99,
#     department: 'Electronics',
#     picture_url: 'https://m.media-amazon.com/images/I/51CgKGfMelL._AC_SL1000_.jpg'
# )
# Product.create!(
#     name: 'Echo Dot (3rd Gen) - Smart speaker with Alexa - Charcoal',
#     description: 'Meet Echo Dot - Our most popular smart speaker with a fabric design. It is our most compact smart speaker that fits perfectly into small spaces.
# //Improved speaker quality - Better speaker quality than Echo Dot Gen 2 for richer and louder sound. Pair with a second Echo Dot for stereo sound.
# //Voice control your music - Stream songs from Amazon Music, Apple Music, Spotify, Sirius XM, and others.
# //Ready to help - Ask Alexa to play music, answer questions, read the news, check the weather, set alarms, control compatible smart home devices, and more.
# //Voice control your smart home - Turn on lights, adjust thermostats, lock doors, and more with compatible connected devices. Create routines to start and end your day.
# //Connect with others hands-free - Call friends and family who have the Alexa app or an Echo device. Instantly drop in on other rooms in your home or make an announcement to every room with a compatible Echo device.
# //Alexa has skills - With tens of thousands of skills and counting, Alexa is always getting smarter and adding new skills like tracking fitness, playing games, and more.
# //Designed to protect your privacy – Amazon is not in the business of selling your personal information to others. Built with multiple layers of privacy controls including a mic off button.',
#     price: 24.99,
#     department: 'Electronics',
#     picture_url: 'https://m.media-amazon.com/images/I/6182S7MYC2L._AC_SL1000_.jpg'
# )
# Product.create!(
#     name: 'Fire TV Stick with Alexa Voice Remote (includes TV controls), HD streaming device',
#     description: 'Latest generation of our best-selling Fire TV device - 50% more powerful than the 2nd generation for fast streaming in Full HD. Includes Alexa Voice Remote with power and volume buttons.
# Endless entertainment - Stream more than 1 million movies and TV episodes from Netflix, Prime Video, Disney+, Peacock, and more, plus listen to millions of songs. Subscription fees may apply.
# Live TV - Watch your favorite live TV, news, and sports with subscriptions to SLING TV, YouTube TV, and others. Use the Guide button to see whats available and when.
# Free TV - Access over 200,000 free movies and TV episodes from popular ad-supported streaming apps like IMDb TV, Tubi, Pluto TV and more.
# Listen to music - Stream on Amazon Music, Spotify, Pandora, and others. Subscription fees may apply.
# Less clutter, more control - Alexa Voice Remote lets you use your voice to search and launch shows across apps. All-new preset buttons get you to favorite apps quickly. Plus, control power and volume on your TV and soundbar with a single remote.
# Home theater audio with Dolby Atmos - Feel scenes come to life with immersive Dolby Atmos audio on select titles with compatible home audio systems.',
#     price: 27.99,
#     department: 'Electronics',
#     picture_url: 'https://m.media-amazon.com/images/I/51KKR5uGn6L._AC_SL1000_.jpg'
# )
# Product.create!(
#     name: 'Amazon Smart Plug, Works with Alexa – A Certified for Humans Device',
#     description: 'Amazon Smart Plug works with Alexa to add voice control to any outlet.
# //Certified for Humans - Struggle-free, tinker-free, stress-free. No patience needed—its actually simple.
# //Schedule lights, fans, and appliances to turn on and off automatically, or control them remotely when you’re away.
# //Simple to set up and use—plug in, open the Alexa app, and get started in minutes.
# //Compact design keeps your second outlet free.
# //No smart home hub required—set up routines and schedules through the Alexa app.
# //See tips on saving energy and estimate your light’s consumption with the Alexa energy dashboard.',
#     price: 24.99,
#     department: 'Electronics',
#     picture_url: 'https://m.media-amazon.com/images/I/41couS+UODL._AC_SL1000_.jpg'
# )
# Product.create!(
#     name: 'Fire HD 8 tablet, 8" HD display, 32 GB, latest model (2020 release), designed for portable entertainment, Black',
#     description: '8" HD display, 2X the storage (32 or 64 GB of internal storage and up to 1 TB with microSD card) + 2 GB RAM. 10th generation (2020 release).
# //All-day battery life - Up to 12 hours of reading, browsing the web, watching videos, and listening to music.
# //Now with USB-C for easier charging. Fully charges in under 5 hours (with included cable + adapter).
# //30% faster thanks to the new 2.0 GHz quad-core processor.
# //Enjoy your favorite apps like Netflix, Facebook, Hulu, Instagram, TikTok, and more through Amazon’s Appstore (Google Play not supported).
# //Stay on track – Check email, make video calls, update shopping lists, and set reminders. Use your favorite apps like Zoom, Outlook, and OneNote.
# //Hands-free with Alexa, including on/off toggle.',
#     price: 44.99,
#     department: 'Electronics',
#     picture_url: 'https://m.media-amazon.com/images/I/71rQHf5SUPL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Blink Outdoor - wireless, weather-resistant HD security camera, two-year battery life, motion detection, set up in minutes – 2 camera kit',
#     description: 'Blink Outdoor is a wireless battery-powered HD security camera that helps you monitor your home day or night with infrared night vision.
# //With long-lasting battery life, Outdoor runs for up to two years on two AA lithium batteries (included).
# //Store video clips and photos in the cloud with the Blink Subscription Plan and save events locally to the Blink Sync Module 2 via a USB flash drive (sold separately).
# //Outdoor is built to withstand the elements to help you protect your home inside or out, come rain or shine.
# //Designed so you can set up yourself in minutes. No wiring, no professional installation required.
# //Get motion detection alerts on your phone with the option to customize motion zones in the Blink Home Monitor app so you’re only alerted when you need to be.
# //See, hear, and speak to visitors with live view in real time and two-way audio features on your Blink app.',
#     price: 99.99,
#     department: 'Electronics',
#     picture_url: 'https://m.media-amazon.com/images/I/41lLBXd-5YL._SL1000_.jpg'
# )
# Product.create!(
#     name: 'Roku Streaming Stick 4K 2021 | Streaming Device 4K/HDR/Dolby Vision with Roku Voice Remote and TV Controls',
#     description: 'Hides behind your TV: The all-new design plugs right into your TV with a simple setup
# //Super-fast startup: Start streaming channels like Disney+, Prime Video, HBO Max, Apple TV+, Netflix, Sling, and Hulu in a snap—just turn on your TV
# //Long-range Wi-Fi: Enjoy fast, smooth TV streaming in any room with a strong Wi-Fi connection, now up to 2x faster
# //No more juggling remotes: Power up your TV, adjust the volume, and control your Roku Streaming Stick with the Roku remote
# //Voice search & control: Quickly search, play entertainment, and control your streaming device with the voice remote
# //Breathtaking picture: Stream in 4K, Dolby Vision, and HDR10+ with sharp resolution and vivid color
# //Watch what you love: Upgrade your streaming with a massive selection of free, live, and premium TV, including Roku Originals and 200+ free Live TV channels on The Roku Channel
# //Works with popular voice assistants: Enjoy easy voice control with Siri, Alexa, and Google Assistant',
#     price: 29.00,
#     department: 'Electronics',
#     picture_url: 'https://m.media-amazon.com/images/I/71wrIZujPIL._AC_SL1500_.jpg'
# )
# Product.create!(
#     name: 'Fire HD 8 Kids tablet, 8" HD display, ages 3-7, 32 GB, Blue Kid-Proof Case',
#     description: 'Save up to $90 on a full-featured Fire HD 8 tablet (not a toy), 1 year of Amazon Kids+ (FreeTime Unlimited), a Kid-Proof Case with built-in stand, and 2-year worry-free guarantee, versus items purchased separately.
# //2-year worry-free guarantee: if it breaks, return it and well replace it for free.
# //The included 1 year of Amazon Kids+ gives your kids access to over 20,000 apps, games, books, videos, Audible books, and educational content from PBS Kids, Nickelodeon, Disney, and more. Your subscription will then automatically renew every month starting at just $2.99 per month plus applicable tax. You may cancel at any time by visiting the Amazon Parent Dashboard or contacting Customer Service.
# //Over 20 million kids (and their parents) have enjoyed Amazon Kids (FreeTime) service. Amazon Kids parental controls allow you to set educational goals, create time limits, and filter content.
# //Parents can give kids access to more apps like Netflix, Minecraft, and Zoom via the Amazon Parent Dashboard.
# //Stream over wifi or view downloaded content on the go with 32 GB of internal storage and up to 12 hours of battery for reading, browsing the web, watching videos, and listening to music. Add a microSD card for up to 1 TB of additional storage.
# //Amazon Kids+ includes thousands of Spanish language books, videos, apps, games, and Audible books.
# //Now with USB-C for easier charging. Includes a USB-C cable and 5W power adapter in the box.',
#     price: 69.99,
#     department: 'Electronics',
#     picture_url: 'https://m.media-amazon.com/images/I/61lgxCi9b7L._AC_SL1000_.jpg'
# )
# Product.create!(
#     name: 'Apple AirTag',
#     description: 'Keep track of and find your items alongside friends and devices in the Find My app
# //Simple one-tap setup instantly connects AirTag with your iPhone or iPad
# //Play a sound on the built-in speaker to help find your things, or just ask Siri for help
# //Precision Finding with Ultra Wideband technology leads you right to your nearby AirTag (on select iPhone models)
# //Find items further away with the help of hundreds of millions of Apple devices in the Find My network
# //Put AirTag into Lost Mode to be automatically notified when it’s detected in the Find My network
# //All communication with the Find My network is anonymous and encrypted for privacy, Location data and history are never stored on AirTag',
#     price: 29.00,
#     department: 'Electronics',
#     picture_url: 'https://m.media-amazon.com/images/I/713xuNx00oS._AC_SL1500_.jpg'
# )

# user seeds:

demoUser = User.create!(
    name: 'Guest User',
    email: 'guest@email.com',
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

# review seeds:

1000.times do
    Review.create!(
        headline: Faker::Hipster.sentence,
        body: Faker::Hipster.paragraph(sentence_count: rand(2..12)),
        rating: rand(1..5).to_i,
        product_id: rand(1..10).to_i,
        author_id: rand(1..4).to_i
    )
end