const foodItems = [
  {
    "foodName": "Offers",
    "image":
        "https://img.freepik.com/free-photo/3d-render-gift-box-with-ribbon-present-package_107791-15904.jpg?size=338&ext=jpg&ga=GA1.1.1700460183.1708214400&semt=ais"
  },
  {
    "foodName": "Burgers",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Asian",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Pizzas",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Italian",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Sushi",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Mexican",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Steak",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Salads",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Sandwiches",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Seafood",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Desserts",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Indian",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Chinese",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Thai",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Mediterranean",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Greek",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Vegetarian",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Vegan",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "BBQ",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  },
  {
    "foodName": "Comfort Food",
    "image":
        "https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg"
  }
];

const hotelNames = [
  {
    "name": "Tasty Bites",
    "rating": 4.5,
    "foodType": "Fast Food",
    "foodItems": ["Burgers", "Fries", "Milkshakes"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "123 Main Street, Cityville, State"
  },
  {
    "name": "Spice Palace",
    "rating": 4.2,
    "foodType": "Indian",
    "foodItems": ["Curry", "Biryani", "Naan"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "456 Spice Lane, Flavortown, State"
  },
  {
    "name": "Mamma Mia Pizzeria",
    "rating": 4.8,
    "foodType": "Italian",
    "foodItems": ["Margherita Pizza", "Pasta", "Tiramisu"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "789 Pizza Avenue, Cheesetown, State"
  },
  {
    "name": "Sushi Haven",
    "rating": 4.6,
    "foodType": "Sushi",
    "foodItems": ["Sashimi", "Rolls", "Miso Soup"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "101 Sushi Street, Fishville, State"
  },
  {
    "name": "BBQ Bliss",
    "rating": 4.4,
    "foodType": "BBQ",
    "foodItems": ["Grilled Ribs", "Brisket", "Cornbread"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "234 BBQ Road, Smoketown, State"
  },
  {
    "name": "Green Garden",
    "rating": 4.7,
    "foodType": "Vegetarian",
    "foodItems": ["Vegetable Stir-Fry", "Quinoa Salad", "Smoothies"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "567 Veggie Lane, Greensville, State"
  },
  {
    "name": "Ocean Delight",
    "rating": 4.3,
    "foodType": "Seafood",
    "foodItems": ["Grilled Salmon", "Shrimp Scampi", "Clam Chowder"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "890 Sea Street, Oceanville, State"
  },
  {
    "name": "Dessert Delights",
    "rating": 4.9,
    "foodType": "Desserts",
    "foodItems": ["Chocolate Cake", "Ice Cream", "Cheesecake"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "123 Sweet Avenue, Sugarland, State"
  },
  {
    "name": "Mediterranean Oasis",
    "rating": 4.6,
    "foodType": "Mediterranean",
    "foodItems": ["Hummus", "Falafel", "Greek Salad"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "456 Med Lane, Oliveville, State"
  },
  {
    "name": "Wok 'n Roll",
    "rating": 4.2,
    "foodType": "Chinese",
    "foodItems": ["Orange Chicken", "Fried Rice", "Spring Rolls"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "789 Stir-Fry Street, Woksville, State"
  },
  {
    "name": "Thai Temptations",
    "rating": 4.5,
    "foodType": "Thai",
    "foodItems": ["Pad Thai", "Green Curry", "Tom Yum Soup"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "101 Thai Lane, Spicetown, State"
  },
  {
    "name": "Comfort Cove",
    "rating": 4.4,
    "foodType": "Comfort Food",
    "foodItems": ["Mac 'n Cheese", "Chicken Pot Pie", "Mashed Potatoes"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "234 Comfort Street, Cozyville, State"
  },
  {
    "name": "Vegan Vibes",
    "rating": 4.7,
    "foodType": "Vegan",
    "foodItems": ["Vegan Burger", "Quinoa Bowl", "Chia Pudding"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "567 Green Lane, Plantville, State"
  },
  {
    "name": "Greek Delicacies",
    "rating": 4.8,
    "foodType": "Greek",
    "foodItems": ["Souvlaki", "Spanakopita", "Baklava"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "890 Gyro Avenue, Athensville, State"
  },
  {
    "name": "Royal Feast",
    "rating": 4.5,
    "foodType": "Regular Food",
    "foodItems": ["Steak", "Chicken Alfredo", "Caesar Salad"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "123 Feast Street, Royaltyville, State"
  },
  {
    "name": "Noodle Nirvana",
    "rating": 4.6,
    "foodType": "Asian",
    "foodItems": ["Pad See Ew", "Spring Rolls", "Pho"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "456 Noodle Lane, Flavorful City, State"
  },
  {
    "name": "Hearty Hut",
    "rating": 4.3,
    "foodType": "Regular Food",
    "foodItems": ["Grilled Chicken", "Baked Potatoes", "Vegetable Medley"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "789 Homestyle Avenue, Cozytown, State"
  },
  {
    "name": "Sunrise Cafe",
    "rating": 4.9,
    "foodType": "Breakfast",
    "foodItems": ["Pancakes", "Eggs Benedict", "Fruit Parfait"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "101 Morning Street, Sunnyville, State"
  },
  {
    "name": "Far East Flavors",
    "rating": 4.2,
    "foodType": "Asian",
    "foodItems": ["Sushi", "Dim Sum", "Stir-Fried Noodles"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "234 Eastern Lane, Orientville, State"
  },
  {
    "name": "Munch 'n Crunch",
    "rating": 4.4,
    "foodType": "Snacks",
    "foodItems": ["Popcorn", "Nachos", "Pretzels"],
    "itemImage":
        "https://images.immediate.co.uk/production/volatile/sites/30/2023/06/Ultraprocessed-food-58d54c3.jpg?quality=90&resize=440,400",
    "address": "567 Snack Street, Crunchville, State"
  },
];
