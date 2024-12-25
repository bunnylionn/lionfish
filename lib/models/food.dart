// import 'package:flutter/foundation.dart';

class Food {

  //food item
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category; 
  List <Addon> availableAddOns;
  

  Food ({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddOns,
  });
}

  //food categories 
  enum FoodCategory{
    lunch,
    dinner,
    snacks,
  }
  
// food addons
class Addon{
  String name;
  double price;

  Addon ({ 
    required this.name, 
    required this.price
    });

}
