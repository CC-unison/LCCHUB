import 'package:flutter/material.dart';
import 'package:lcchub/widgets/buttons/primary_buttons.dart';
import 'package:lcchub/widgets/centered_view/centered_view.dart';
import 'package:lcchub/widgets/navbar/nav_bar_item.dart';

class NavBarWeb extends StatelessWidget {
  const NavBarWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Image.asset("images/logo.jpg"),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                NavBarItem(title: "Programa"),
                SizedBox(width: 60),
                NavBarItem(title: "Alumnos"),
                SizedBox(width: 60),
                NavBarItem(title: "Plan de Estudios"),
                SizedBox(width: 60),
                NavBarItem(title: "Tesis"),
                SizedBox(width: 60),
              ],
            ),
            const LoginButton(),
          ],
        ),
      ),
    );
  }
}
