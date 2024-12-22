import 'package:flutter/foundation.dart';

class Food {

  //food item
  final String name;
  final String description;
  final String imagePath;
  final String price;
  final FoodCategory category; 
  

  Food ({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required category,
  });
}

  //food categories 
  enum FoodCategory{
    lunch,
    dinner,
    snacks,
  }
  
// food addons
// class Addon{
//   String name;
//   double price;

//   Addon ({ 
//     required this.name, 
//     required this.price
//     });

// }
