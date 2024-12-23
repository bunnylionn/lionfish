import 'package:eatbytes/components/my_current_location.dart';
import 'package:eatbytes/components/my_description_box.dart';
import 'package:eatbytes/components/my_drawer.dart';
import 'package:eatbytes/components/my_sliver_app_bar.dart';
import 'package:eatbytes/components/my_tab_bar.dart';
import 'package:flutter/material.dart';
import '../components/my_food_tile.dart';
import '../models/food.dart';
import '../models/restaurant.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//ika & jannah
class _HomePageState extends State<HomePage> 
  with SingleTickerProviderStateMixin{

  //malin
  //tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController= TabController(length: 3 , vsync:this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  //sort out and return a list of food item that belong to a specific category 
  List <Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu){
    return fullMenu.where( (food) => food.category == category).toList();
  }

  // return list of food in given category
  List <Widget> getFoodInThisCategory(List <Food> fullMenu) {
    return FoodCategory.values.map( (category) {

      //get category menu
      List <Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {

          //get individual food
          final food = categoryMenu[index];

          //return food tile 
          return FoodTile(
            food: food,
            onTap:(){},
          ); 
        },
      );
    }).toList();
  }

  @override
  Widget  build(BuildContext context) {
    return Scaffold(
      //AppBar  
      appBar: AppBar(
      title: Text("Home"),
      backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      
      //sliver
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: Text('title'),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                // my current location
                const MyCurrentLocation(),

                // description box
                const MyDescriptionBox(),
              ],
            ),
          ),
        ],
      ),
      
      title: MyTabBar (tabController:),
      body: TabBarView(
        controller: _tabController
        children: [
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Text("FIRST TAB"),
          ),
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Text("SECOND TAB"),
          ),
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Text("THIRD TAB"),
          ),
        ],
<<<<<<< HEAD
=======

        body: Consumer<Restaurant> (
          builder:(context, restaurant, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
            )
          ),
>>>>>>> 172fec03f2c0d63212bdef3cb8fa01dbec79f5e8
      ),
    );
  }
} 