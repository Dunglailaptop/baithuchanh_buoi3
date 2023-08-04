import 'package:flutter/material.dart';
import 'package:thuchanh_buoi3_bai3/Components/default_button.dart';

import 'menu_item.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 705)
        {
          return SizedBox(
              height: 600,
              child: AppBar(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
                title: Text("Foodi".toUpperCase(),
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                actions: [
                  PopupMenuButton<String>(
                    onSelected: (value) {
                      // Handle menu item selection
                      switch (value) {
                        case "Home":
                        // Handle Home menu item
                          break;
                        case "about":
                        // Handle about menu item
                          break;
                        case "Pricing":
                        // Handle Pricing menu item
                          break;
                        case "Contact":
                        // Handle Contact menu item
                          break;
                        case "Login":
                        // Handle Login menu item
                          break;
                      }
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                      const PopupMenuItem<String>(
                        value: "Home",
                        child: Text("Home"),
                      ),
                      const PopupMenuItem<String>(
                        value: "about",
                        child: Text("about"),
                      ),
                      const PopupMenuItem<String>(
                        value: "Pricing",
                        child: Text("Pricing"),
                      ),
                      const PopupMenuItem<String>(
                        value: "Contact",
                        child: Text("Contact"),
                      ),
                      const PopupMenuItem<String>(
                        value: "Login",
                        child: Text("Login"),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                ],
              ));
        }
        else
        {
          return Container(
            height: 200,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(46),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, -2),
                  blurRadius: 30,
                  color: Colors.black.withOpacity(0.16),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Image.asset(
                  "assets/images/logo.png",
                  height: 25,
                  alignment: Alignment.topCenter,
                ),
                const SizedBox(width: 5),
                Text(
                  "Foodi".toUpperCase(),
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                MenuItem(
                  title: "Home",
                  press: () {},
                ),
                MenuItem(
                  title: "about",
                  press: () {},
                ),
                MenuItem(
                  title: "Pricing",
                  press: () {},
                ),
                MenuItem(
                  title: "Contact",
                  press: () {},
                ),
                MenuItem(
                  title: "Login",
                  press: () {},
                ),
                DefaultButton(
                  text: "Get Started",
                  press: () {},
                ),
              ],
            ),
          );
        }
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
