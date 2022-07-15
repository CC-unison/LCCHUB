import 'package:flutter/material.dart';
import 'package:lcchub/widgets/navbar/nav_bar_item.dart';

class NavBarMobil extends StatelessWidget {
  const NavBarMobil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ),
          const NavBarItem(title: "LCC-Hub"),
        ],
      ),
    );
  }
}
