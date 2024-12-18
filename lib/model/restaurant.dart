import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'cart_item.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/burger1.jpeg",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Smoky BBQ sauce, crispy bacon, and onion rings make this beef burger a savory delight.",
      imagePath: "lib/images/burgers/burger2.jpeg",
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapeños", price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 1.99),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "A hearty veggie patty topped with fresh avocado, lettuce, and tomato, served on a whole wheat bun.",
      imagePath: "lib/images/burgers/burger3.jpeg",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 0.99),
        Addon(name: "Grilled Mushrooms", price: 1.49),
        Addon(name: "Hummus Spread", price: 1.99),
      ],
    ),
    Food(
      name: "Aloha Burger",
      description:
          "A char-grilled chicken breast topped with a slice of grilled pineapple, Swiss cheese, and lettuce, served on a whole wheat bun.",
      imagePath: "lib/images/burgers/burger4.jpeg",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Teriyaki Glaze", price: 0.99),
        Addon(name: "Extra Pineapple", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
      ],
    ),
    Food(
      name: "Blue Moon Burger",
      description:
          "This burger is a blue cheese lover's dream come true! The juicy beef patty is seasoned with extra cheese, and the toasted bun is topped with a slice of blue cheese, served on a whole wheat bun.",
      imagePath: "lib/images/burgers/burger5.jpeg",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Sauteed Mushrooms", price: 0.99),
        Addon(name: "Fried Egg", price: 1.49),
        Addon(name: "Spicy Mayo", price: 0.99),
      ],
    ),

    // salads
    Food(
      name: "Caesar Salad",
      description:
          "A classic Caesar salad with romaine lettuce, croutons, parmesan cheese, and Caesar dressing.",
      imagePath: "lib/images/salads/salad1.jpeg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chickens", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "Tomatoes, cucumbers, red onions, olives, feta cheese with olive oil and herbs.",
      imagePath: "lib/images/salads/salad2.jpeg",
      price: 8.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Feta Cheese", price: 0.99),
        Addon(name: "Kalamata Olives", price: 1.49),
        Addon(name: "Grilled Shrimp", price: 1.99),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "Quinoa mixed with cucumbers, tomatoes, bell peppers, and a lemon vinaigrette.",
      imagePath: "lib/images/salads/salad3.jpeg",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "Asian Sesame Salad",
      description:
          "A delicious Asian-style salad with fresh vegetables, fresh cilantro, and a tangy sesame dressing.",
      imagePath: "lib/images/salads/salad4.jpeg",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Mandarin Oranges", price: 0.99),
        Addon(name: "Almond Slivers", price: 1.49),
        Addon(name: "Extra Teriyaki Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "South West Chicken  Salad",
      description:
          "This colorful salad combines the zesty flavors of the Southwest. It's loaded with mixed vegetables, grilled chicken, and a tangy lime dressing.",
      imagePath: "lib/images/salads/salad5.jpg",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Sour Cream", price: 0.99),
        Addon(name: "Pico de Gallo", price: 1.49),
        Addon(name: "Guacamole", price: 1.99),
      ],
    ),

    // sides
    Food(
      name: "Sweet Potato Fries",
      description: "Crispy sweet potato fries with a touch of salt.",
      imagePath: "lib/images/sides/potato_sides.jpg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.49),
        Addon(name: "Cajun Spice", price: 1.99),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Golden and crispy onion rings, perfect for dipping.",
      imagePath: "lib/images/sides/onion_fries.jpg",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ranch Dip", price: 0.99),
        Addon(name: "Spicy Mayo", price: 1.49),
        Addon(name: "Parmesan Dust", price: 1.99),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description:
          "Warm and toasty garlic bread, topped with melted butter and parsley.",
      imagePath: "lib/images/sides/garlic_bread_sides.jpeg",
      price: 4.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Garlic", price: 0.99),
        Addon(name: "Mozzarella Cheese", price: 1.49),
        Addon(name: "Marinara Dip", price: 1.99),
      ],
    ),
    Food(
      name: "Loaded Sweet Potato Fries",
      description:
          "Savory sweet potato fries loaded with melted cheese, smoky bacon bits, and a dollop of sour cream.",
      imagePath: "lib/images/sides/french-fries.jpg",
      price: 4.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Sour Cream", price: 0.99),
        Addon(name: "Bacon Bits", price: 1.49),
        Addon(name: "Green Onions", price: 0.99),
      ],
    ),
    Food(
      name: "Crispy Mac & Cheese Bites",
      description:
          "Golden brown, bite-sized mac and cheese balls, perfect for on-the-go snacking. Served with a side of your choice.",
      imagePath: "lib/images/sides/mac_sides.jpg",
      price: 4.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Bacon Bits", price: 0.99),
        Addon(name: "Jalapeno Slices", price: 1.49),
        Addon(name: "Sriracha Drizzle", price: 0.99),
      ],
    ),

    // desserts
    Food(
      name: "Chocolate Brownie",
      description:
          "Rich and fudgy chocolate brownie, with chunks of chocolate.",
      imagePath: "lib/images/desserts/d1.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
          "Creamy cheesecake on a graham cracker crust, with a berry compote.",
      imagePath: "lib/images/desserts/d4.jpg",
      price: 6.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 0.99),
        Addon(name: "Blueberry Compote", price: 1.49),
        Addon(name: "Chocolate Chips", price: 1.99),
      ],
    ),
    Food(
      name: "Apple Pie",
      description:
          "Classic apple pie with a flaky crust and a cinnamon-spiced apple filling.",
      imagePath: "lib/images/desserts/d2.jpg",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Caramel Sauce", price: 0.99),
        Addon(name: "Vanilla Ice Cream", price: 1.49),
        Addon(name: "Cinnamon Spice", price: 1.99),
      ],
    ),
    Food(
      name: "Decadent Chocolate Cupcakes",
      description:
          "A tray of moist chocolate cupcakes topped with swirls of rich chocolate and vanilla frosting, elegantly garnished with chocolate sprinkles and pearls.",
      imagePath: "lib/images/desserts/d3.jpg",
      price: 10.90,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Fresh Berries", price: 0.99),
        Addon(name: "Caramel Drizzle", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Red Velvet Lava Cake",
      description:
          "A delectable red velvet cake with a warm, gooey chocolate lave center, served with a smooth vanilla buttercream frosting. PS The description doesnt match the image, I know.",
      imagePath: "lib/images/desserts/d5.jpg",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Raspberry Sauce", price: 0.99),
        Addon(name: "Cream Cheese Icing", price: 1.49),
        Addon(name: "Chocolate Sprinkles", price: 0.99),
      ],
    ),

    // drinks
    Food(
      name: "Golden Brew",
      description:
          "A chilled glass of amber beer with a foamy head, offering a refreshing and crisp taste, often featuring subtle malty or hoppy flavors.",
      imagePath: "lib/images/drinks/beer.jpg",
      price: 4.57,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
            name: "Salted peanuts or pretzels for a crunchy snack",
            price: 0.99),
        Addon(name: "Lime wedge to enhance citrusy notes", price: 1.49),
        Addon(
            name: "Spicy buffalo wings to complement the bitterness.",
            price: 1.99),
      ],
    ),
    Food(
      name: "Tropical Sunset",
      description:
          "A vibrant cocktail with layers of fruit juices, alcohol, and ice, garnished with a slice of citrus fruit or a cherry, creating a sweet and tangy experience.",
      imagePath: "lib/images/drinks/cocktail.jpg",
      price: 2.30,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Umbrella straw for a playful touch", price: 0.99),
        Addon(name: "Sugared rim for extra sweetness", price: 1.49),
        Addon(name: "Grilled shrimp skewer as a savory pairing", price: 1.99),
      ],
    ),
    Food(
      name: "Artisan Roast",
      description:
          "Dark, aromatic roasted coffee beans with a rich, smoky flavor profile, ideal for grinding and brewing fresh coffee.",
      imagePath: "lib/images/drinks/roasted_coffee beans.jpg",
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "A chocolate bar for pairing", price: 0.99),
        Addon(
            name: "A coffee grinder for a fresh brewing experience",
            price: 1.49),
        Addon(
            name: "Vanilla beans to infuse sweet aromas into the brew",
            price: 1.99),
      ],
    ),
    Food(
      name: "Velvet Espresso Bliss",
      description:
          "A luxurious cocktail combining the bold flavor of espresso, vodka, and coffee liqueur, topped with a frothy layer and a garnish of coffee beans.",
      imagePath: "lib/images/drinks/espresso_martini.jpg",
      price: 5.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
            name: "A sprinkle of cocoa powder for enhanced richness",
            price: 0.99),
        Addon(name: "Dark chocolate truffles on the side", price: 1.49),
        Addon(
            name: "Vanilla-flavored whipped cream for added decadence",
            price: 1.99),
      ],
    ),
    Food(
      name: "Emerald Detox",
      description:
          "A nutrient-packed green smoothie made with leafy greens, fruits, and a liquid base, offering a refreshing and energizing taste.",
      imagePath: "lib/images/drinks/green_smoothie.jpg",
      price: 0.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Chia seeds for extra fiber and texture", price: 0.99),
        Addon(name: "Sliced avocado for creaminess", price: 1.49),
        Addon(name: "Fresh mint leaves to add a cooling effect", price: 1.99),
      ],
    ),
  ];

  /*

  Getters

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*

  Operations

  */

  // user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*

  Helpers

  */

  // generate a receipt

  // format double value into money

  // format list of addons into a string summary
}
