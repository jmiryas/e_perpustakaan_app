import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/about_us_screen.dart';

enum MenuType {
  library,
  aboutUs,
}

class DrawerNavigationWidget extends StatefulWidget {
  const DrawerNavigationWidget({Key? key}) : super(key: key);

  @override
  State<DrawerNavigationWidget> createState() => _DrawerNavigationWidgetState();
}

class _DrawerNavigationWidgetState extends State<DrawerNavigationWidget> {
  MenuType currentMenuType = MenuType.library;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/wallpaper.jpg"))),
            child: Center(
              child: Text(
                "e-Perpustakaan",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            tileColor: currentMenuType == MenuType.library
                ? Colors.blue
                : Colors.transparent,
            title: Row(
              children: [
                Icon(
                  Icons.home,
                  color: currentMenuType == MenuType.library
                      ? Colors.white
                      : Colors.black,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Library",
                  style: TextStyle(
                    color: currentMenuType == MenuType.library
                        ? Colors.white
                        : Colors.black,
                  ),
                )
              ],
            ),
            onTap: () {
              setState(() {
                currentMenuType = MenuType.library;
              });

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
          ),
          ListTile(
            tileColor: currentMenuType == MenuType.aboutUs
                ? Colors.blue
                : Colors.transparent,
            title: Row(
              children: [
                Icon(
                  Icons.help,
                  color: currentMenuType == MenuType.aboutUs
                      ? Colors.white
                      : Colors.black,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  "About Us",
                  style: TextStyle(
                    color: currentMenuType == MenuType.aboutUs
                        ? Colors.white
                        : Colors.black,
                  ),
                )
              ],
            ),
            onTap: () {
              setState(() {
                currentMenuType = MenuType.aboutUs;
              });

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutUsScreen(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
