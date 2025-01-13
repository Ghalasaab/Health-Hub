import 'package:flutter/material.dart';
import 'package:healthhub/auth/login_or_register.dart';
import 'package:healthhub/components/my_drawer_tile.dart';
//import 'package:healthhub/pages/login_page.dart';
import 'package:healthhub/pages/recipes_page.dart';

import '../pages/settings_page.dart';

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
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
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
            text: "H O M E",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),

          //settings list title
          MyDrawerTile(
            text: "S E T T I N G S ",
            icon: Icons.settings,
            onTap: () {
               Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage(),
                ),
                );
            },
          ),

          //recipes --> API
          MyDrawerTile(
            text: "R E C I P E S",
            icon: Icons.food_bank_outlined,
            onTap: () {
               Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => const RecipesPage(),
                ),
                );
            },
          ),
             const Spacer(),
          //logout list title
          MyDrawerTile(
            text: "L O G O U T ",
            icon: Icons.logout,
            onTap: () {
               Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginOrRegister(),
                ),
                );
            },
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
