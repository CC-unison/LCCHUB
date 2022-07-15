import 'package:flutter/material.dart';
import 'package:lcchub/widgets/navbar/nav_bar_mobil.dart';
import 'package:lcchub/widgets/navbar/nav_bar_web.dart';

import '../../config/responsive.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? const NavBarWeb()
        : const NavBarMobil();
  }
}
