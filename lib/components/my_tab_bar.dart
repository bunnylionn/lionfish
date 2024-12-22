import 'package:flutter/material.dart';

import '../models/food.dart';


class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar ({
    super.key,
    required this.controller,

   });
  List <Tab> _buildCategoryTabs(){
    return FoodCategory.values.map((category){
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTabs(),
      ),
    );
  }
}