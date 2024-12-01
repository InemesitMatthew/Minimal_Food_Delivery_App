import 'package:flutter/material.dart';
import '../pages/settings_page.dart';
import 'my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // app logo
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

          // home list tile
          MyDrawerTile(
            text: "Home",
            icon: Icons.home,
            onTap: () {},
          ),

          // settings list tile

          MyDrawerTile(
            text: "Settings",
            icon: Icons.settings,
            onTap: () {
              // pop drawer
              Navigator.pop(context);

              // navigate to settings page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),

          // logout list tile
        ],
      ),
    );
  }
}
