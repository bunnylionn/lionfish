import 'package:eatbytes/components/my_drawer.dart';
import 'package:flutter/material.dart';

<<<<<<< HEAD
=======
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Home"),
      backgroundColor: Theme.of(context).colorScheme.background,
      ),
      drawer: MyDrawer(),
    );
  }
}
// jannah punya
>>>>>>> 6654be6ccacb10f8682b1977d7ee424a8b7a2d21
