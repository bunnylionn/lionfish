import 'package:eatbytes/components/my_drawer.dart';
import 'package:eatbytes/components/my_sliver_app_bar.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//ika & jannah
class _HomePageState extends State<HomePage> {
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
            title: Text('title'),
          ),
        ],
        body: Container(color: Colors.blue),
      ),
    );
  }
}