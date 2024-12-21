import 'package:eatbytes/components/my_drawer.dart';
import 'package:eatbytes/components/my_sliver_app_bar.dart';
import 'package:eatbytes/components/my_tab_bar.dart';
import 'package:flutter/material.dart';


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
  
  @override
  Widget build(BuildContext context) {
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
            child: Text('Hello'),
            title: MyTabBar (tabController:),
          ),
        ],
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
        ),
      ),
    );
  }
} 