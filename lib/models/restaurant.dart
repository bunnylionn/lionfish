import 'package:eatbytes/models/cart_item.dart';
<<<<<<< HEAD
import 'package:intl/intl.dart';
=======
import 'package:flutter/material.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu= [
    //lunch
    Food( 
      name: "Nasi Kandar", 
      description: "A tasty nasi kandar", 
      imagePath: "lib/images/lunch/nasi kandar.jpg" ,
      price: '10.00' ,
      category: FoodCategory.lunch,
    ),
    Food( 
      name: "Nasi kerabu", 
      description: "A tasty nasi kandar", 
      imagePath: "lib/images/lunch/nasi kerabu.webp" ,
      price: '10.00' ,
      category: FoodCategory.lunch,
    ),
    Food( 

      name: "Nasi Lemak", 
      description: "A tasty nasi kandar", 
      imagePath: "lib/images/lunch/Nasi lemak.webp" ,
      price: '10.00' ,
      category: FoodCategory.lunch,
    ),

    //dinner
    Food( 
      name: "Nasi Kandar", 
      description: "A tasty nasi kandar", 
      imagePath: "lib/images/lunch/nasi kandar.jpg" ,
      price: '10.00' ,
      category: FoodCategory.lunch,
    ),
    Food( 
      name: "Nasi kerabu", 
      description: "A tasty nasi kandar", 
      imagePath: "lib/images/lunch/nasi kerabu.webp" ,
      price: '10.00' ,
      category: FoodCategory.lunch,
    ),
    Food( 

      name: "Nasi Lemak", 
      description: "A tasty nasi kandar", 
      imagePath: "lib/images/lunch/Nasi lemak.webp" ,
      price: '10.00' ,
      category: FoodCategory.lunch,
    ),

    //snacks
    Food( 
      name: "Nasi Kandar", 
      description: "A tasty nasi kandar", 
      imagePath: "lib/images/lunch/nasi kandar.jpg" ,
      price: '10.00' ,
      category: FoodCategory.lunch,
    ),
    Food( 
      name: "Nasi kerabu", 
      description: "A tasty nasi kandar", 
      imagePath: "lib/images/lunch/nasi kerabu.webp" ,
      price: '10.00' ,
      category: FoodCategory.lunch,
    ),
    Food( 

      name: "Nasi Lemak", 
      description: "A tasty nasi kandar", 
      imagePath: "lib/images/lunch/Nasi lemak.webp" ,
      price: '10.00' ,
      category: FoodCategory.lunch,
    ),
  ];

  /*

    GETTERS

  */

  List <Food> get menu => _menu;

  /*

    OPERATIONS

  */  

  /*

    HELPERS

  */
}



>>>>>>> 172fec03f2c0d63212bdef3cb8fa01dbec79f5e8

// JANNAH PUNYA

List<Food> get menu => _menu;
List<CartItem> get cart => _cart;

/*

OPERATIONS

*/

// user cart
final List<CartItem> _cart = [];

// add to cart
void addToCart(Food food, List<Addon> selectedAddons){

  // see if there is a cart item already with the same food and selected addons
  CartItem? cartItem = _cart.firstWhereOrNull((item) { // need to write something at terminal 58.17 utube

    // check if the food items are the same
    bool isSameFood = item.food == food; 
    
    // check if the list of selected addons are the same
    bool isSameAddons = ListEquality().equals(item.selectedAddons, selectedAddons);

    return isSameFood && isSameAddons;

  });

  // if item already exists, increase its quantity
  cartItem.quantity++;
  notifyListeners();

  //remove from cart
  void removeFromCart(CartItem cartItem){
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1){
      if(_cart[cartIndex].quantity > 1){
        _cart[cartIndex].quantity--;
      } else{
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice(){
    double total = 0.0;

    for (CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons){
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount(){
    int totalItemCount = 0;

    for (CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart(){
    _cart.clear();
    notifyListeners();
  }

  // generate receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();
  

    // format the date to include up to seconds only
    String formattedDate = 
      DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
  
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("------------");

    for (final cartItem in _cart) {
      receipt.writeln(
         "${cartItem.quantity} x ${cartItem.food.name} - ${formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
           .writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "RM${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
    .map((addon) => "${addon.name} (${_formatprice(addon.price)})")
    .join(", ");
  }

}