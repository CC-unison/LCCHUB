import 'package:flutter/material.dart';
import 'package:lcchub/widgets/navbar/drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 26, 113, 184),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: ListView(
        children: const [
          DrawerItem(title: "Programa"),
          DrawerItem(title: "Alumnos"),
          DrawerItem(title: "Plan de Estudios"),
          DrawerItem(title: "Tesis"),
        ],
      ),
    );
  }
}
