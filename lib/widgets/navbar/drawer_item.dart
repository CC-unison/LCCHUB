import 'package:flutter/cupertino.dart';
import 'package:lcchub/widgets/navbar/nav_bar_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  const DrawerItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 30),
      child: NavBarItem(title: title),
    );
  }
}
