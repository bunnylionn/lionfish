import 'package:eatbytes/pages/setting_page.dart';
import 'package:flutter/material.dart';

import 'my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icon.lock_open_rounded,
            size: 80,color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          //home list

          MyDrawerTile(
            text:"H O M E",
            icon: Icon.home,
            onTap: () => Navigator.pop(context),
          ),
          //setting 
          MyDrawerTile(
            text:"S E T T I I N G",
            icon: Icon.setting,
            onTap: (){
              Navigator.pop(context);
              Navigator.push(
                context,
                 MaterialPageRoute(
                  builder: (context) => const SettingPage(),
                  ),
                  );

            },
          ),

          const Spacer(),

          //logout
          MyDrawerTile(
            text:"L O G O U T",
            icon: Icon.logout,
            onTap: (){},
          ),

          const SizedBox(height: 25),
  
        ],
      ),
    );
  }
}