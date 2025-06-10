final List<String> recipeCategories = [
  'New',
  'Popular',
  'Breakfast',
  'Snacks',
  'Dinner',
  'Lunch',
  'Dessert',
];
String desc = '''
  brings together simplicity and flavor to create a truly delightful meal that’s perfect for any occasion. Whether you're cooking for family, friends, or just treating yourself, this dish delivers on both taste and presentation. It uses fresh, wholesome ingredients and a straightforward cooking process, making it suitable for beginners and experienced cooks alike. Packed with rich flavors, satisfying textures, and a beautiful visual appeal, this recipe fits seamlessly into both everyday meals and special celebrations.

Each bite offers a burst of taste, whether it's from the aromatic spices, crisp vegetables, or tender main ingredients. The recipe is designed to be both nutritious and indulgent, providing the perfect balance for a fulfilling experience. You can also customize it to your preferences, adding or substituting ingredients to make it uniquely yours. Serve it hot and fresh for the best experience, and consider pairing it with a side dish or beverage of your choice to complete the meal.

With just a bit of preparation, you’ll have a home-cooked dish that feels gourmet. It’s not just a recipe—it’s a gateway to making food that brings people together and leaves a lasting impression.
''';
late String name;
final Map<String, List<Map<String, dynamic>>> recipeItems = {
  'New': [
    {
      'name': 'Quesadilla',
      'rating': 5,
      'duration': '15 min',
      'image': 'assets/images/Quesadilla.jpeg',
    },
    {
      'name': 'Pilaf_with_seafood',
      'rating': 5,
      'duration': '15 min',
      'image': 'assets/images/Pilaf_with_seafood.jpeg',
    },
    {
      'name': 'Tom Yam',
      'rating': 5,
      'duration': '15 min',
      'image': 'assets/images/tom_yam.jpeg',
    },
    {
      'name': 'Ramen noodle soup',
      'rating': 5,
      'duration': '15 min',
      'image': 'assets/images/Ramen_noodle_soup.jpeg',
    },
    {
      'name': 'Spicy Chickpea Wrap',
      'rating': 4,
      'duration': '20 min',
      'image': 'assets/images/Spicy_chickpea_wrap.jpeg',
    },
    {
      'name': 'Creamy Avocado Pasta',
      'rating': 4,
      'duration': '25 min',
      'image': 'assets/images/Avocado_Pasta.jpeg',
    },
    {
      'name': 'Baked Zucchini Chips',
      'rating': 4,
      'duration': '30 min',
      'image': 'assets/images/BakedZucchiniChips.jpeg',
    },
    {
      'name': 'Teriyaki Chicken Bowl',
      'rating': 5,
      'duration': '20 min',
      'image': 'assets/images/TeriyakiChickenBowl.jpeg',
    },
  ],
  'Popular': [
    {
      'name': 'Beef Tacos',
      'rating': 5,
      'duration': '20 min',
      'image': 'assets/images/BeefTacos1.jpg',
    },
    {
      'name': 'Butter Chicken',
      'rating': 5,
      'duration': '35 min',
      'image': 'assets/images/BufferChicken.jpg',
    },
    {
      'name': 'Margherita Pizza',
      'rating': 5,
      'duration': '30 min',
      'image': 'assets/images/MargheritaPizza.jpeg',
    },
    {
      'name': 'Chicken Alfredo Pasta',
      'rating': 4,
      'duration': '25 min',
      'image': 'assets/images/Pasta.jpg',
    },
    {
      'name': 'Sushi Rolls',
      'rating': 5,
      'duration': '40 min',
      'image': 'assets/images/SushiRolls1.jpg',
    },
    {
      'name': 'Paneer Tikka',
      'rating': 5,
      'duration': '30 min',
      'image': 'assets/images/PannerTikka1.jpg',
    },
    {
      'name': 'Grilled Salmon',
      'rating': 4,
      'duration': '25 min',
      'image': 'assets/images/Grilled_Salmon_with_lemon2.jpg',
    },
    {
      'name': 'Spaghetti Carbonara',
      'rating': 5,
      'duration': '30 min',
      'image': 'assets/images/Spaghetti_Carbonara.jpg',
    },
  ],
  'Breakfast': [
    {
      'name': 'Avocado Toast with Egg',
      'rating': 5,
      'duration': '10 min',
      'image': 'assets/images/avocado_hero2.webp',
    },
    {
      'name': 'Banana Pancakes',
      'rating': 4,
      'duration': '20 min',
      'image': 'assets/images/Banana.jpg',
    },
    {
      'name': 'Breakfast Burrito',
      'rating': 5,
      'duration': '15 min',
      'image': 'assets/images/Burritos.jpg',
    },
    {
      'name': 'Omelette with Veggies',
      'rating': 4,
      'duration': '10 min',
      'image': 'assets/images/Omelette_Veggies.jpg',
    },
    {
      'name': 'Chia Pudding',
      'rating': 5,
      'duration': '5 min',
      'image': 'assets/images/Chai_pudding2.jpg',
    },
    {
      'name': 'French Toast',
      'rating': 4,
      'duration': '15 min',
      'image': 'assets/images/French_Roast1.jpg',
    },
    {
      'name': 'Smoothie Bowl',
      'rating': 5,
      'duration': '10 min',
      'image': 'assets/images/Smoothi_Bowl1.jpg',
    },
    {
      'name': 'Masala Dosa',
      'rating': 5,
      'duration': '25 min',
      'image': 'assets/images/Masala_Dosa.jpg',
    },
  ],
  'Snacks': [
    {
      'name': 'Loaded Nachos',
      'rating': 5,
      'duration': '15 min',
      'image': 'assets/images/Loaded_Nachos2.jpg',
    },
    {
      'name': 'Vegetable Spring Rolls',
      'rating': 4,
      'duration': '20 min',
      'image': 'assets/images/Vegitable_Spring_Rolls2.jpg',
    },
    {
      'name': 'Chicken Nuggets',
      'rating': 5,
      'duration': '15 min',
      'image': 'assets/images/Chicken_Nuggets2.jpg',
    },
    {
      'name': 'Garlic Bread Bites',
      'rating': 4,
      'duration': '10 min',
      'image': 'assets/images/Garlic_Bread_Bites2.jpg',
    },
    {
      'name': 'Cheese Corn Balls',
      'rating': 5,
      'duration': '25 min',
      'image': 'assets/images/Cheese_Corn_Balls2.jpg',
    },
    {
      'name': 'Samosa',
      'rating': 5,
      'duration': '30 min',
      'image': 'assets/images/Samosa2.jpg',
    },
    {
      'name': 'Popcorn with Spices',
      'rating': 4,
      'duration': '5 min',
      'image': 'assets/images/PopCorn2.jpg',
    },
    {
      'name': 'Stuffed Mushrooms',
      'rating': 4,
      'duration': '20 min',
      'image': 'assets/images/Stuffed_Mushroom1.jpg',
    },
  ],
  'Dinner': [
    {
      'name': 'Baked Lasagna',
      'rating': 5,
      'duration': '40 min',
      'image': 'assets/images/Baked_Lasanga2.jpg',
    },
    {
      'name': 'Miso Soup with Tofu',
      'rating': 4,
      'duration': '20 min',
      'image': 'assets/images/Miso_Soup2.jpg',
    },
    {
      'name': 'Stuffed Bell Peppers',
      'rating': 5,
      'duration': '30 min',
      'image': 'assets/images/Stuffed_pepper_balls1.jpg',
    },
    {
      'name': 'Creamy Mushroom Risotto',
      'rating': 4,
      'duration': '35 min',
      'image': 'assets/images/Creamy_Mushroom_Risotto.jpg',
    },
    {
      'name': 'Grilled Paneer Skewers',
      'rating': 4,
      'duration': '25 min',
      'image': 'assets/images/Grilled_Salmon_with_lemon1.jpg',
    },
    {
      'name': 'Thai Green Curry',
      'rating': 5,
      'duration': '30 min',
      'image': 'assets/images/Thai_Green_Curry1.jpg',
    },
    {
      'name': 'Roast Chicken',
      'rating': 5,
      'duration': '40 min',
      'image': 'assets/images/Roast_chicken_with_Vigges1.jpg',
    },
    {
      'name': 'Chicken Biryani',
      'rating': 5,
      'duration': '45 min',
      'image': 'assets/images/Biriyani2.jpg',
    },
  ],
  'Lunch': [
    {
      'name': 'Vegetable Fried Rice',
      'rating': 4,
      'duration': '20 min',
      'image': 'assets/images/Vegetable_Friedrice1.jpg',
    },
    {
      'name': 'Dal Tadka with Rice',
      'rating': 5,
      'duration': '30 min',
      'image': 'assets/images/Dal_Tadaka_with_Jeerarice1.jpg',
    },
    {
      'name': 'Grilled Cheese Sandwich',
      'rating': 4,
      'duration': '10 min',
      'image': 'assets/images/Grilled_cheese_sandwhich2.jpg',
    },
    {
      'name': 'Chicken Caesar Salad',
      'rating': 4,
      'duration': '15 min',
      'image': 'assets/images/Chicken_salad.jpg',
    },
    {
      'name': 'Burrito Bowl',
      'rating': 5,
      'duration': '20 min',
      'image': 'assets/images/Burrito_Bowl2.jpg',
    },
    {
      'name': 'Thai Basil Chicken',
      'rating': 4,
      'duration': '25 min',
      'image': 'assets/images/Thai_Basil_chicken1.jpg',
    },
    {
      'name': 'Egg Curry with Paratha',
      'rating': 5,
      'duration': '30 min',
      'image': 'assets/images/Egg_curry_Parata.jpg',
    },
    {
      'name': 'Couscous Salad',
      'rating': 4,
      'duration': '15 min',
      'image': 'assets/images/Burrito_Bowl2.jpg',
    },
  ],
  'Dessert': [
    {
      'name': 'Chocolate Lava Cake',
      'rating': 5,
      'duration': '25 min',
      'image': 'assets/images/Chocolate_Lavender_cake1.jpg',
    },
    {
      'name': 'Gulab Jamun',
      'rating': 5,
      'duration': '30 min',
      'image': 'assets/images/Gulab_jam1.jpg',
    },
    {
      'name': 'Mango Cheesecake',
      'rating': 4,
      'duration': '45 min',
      'image': 'assets/images/Mango_Cheese_cake1.jpg',
    },
    {
      'name': 'Tiramisu',
      'rating': 5,
      'duration': '50 min',
      'image': 'assets/images/Tiramisu2.jpg',
    },
    {
      'name': 'Brownie with Ice Cream',
      'rating': 5,
      'duration': '35 min',
      'image': 'assets/images/Brownie_with_icecream1.jpg',
    },
    {
      'name': 'Rasmalai',
      'rating': 5,
      'duration': '40 min',
      'image': 'assets/images/Rasamalai2.jpg',
    },
    {
      'name': 'Apple Pie',
      'rating': 4,
      'duration': '50 min',
      'image': 'assets/images/Apple_pie1.jpg',
    },
    {
      'name': 'Panna Cotta',
      'rating': 4,
      'duration': '30 min',
      'image': 'assets/images/Panna_Cotta.jpg',
    },
  ],
};
