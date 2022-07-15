import 'package:flutter/material.dart';

import '../buttons/primary_buttons.dart';
class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // ignore: prefer_const_literals_to_create_immutables
      children: const [
        SizedBox(
          width: 10,
        ),
        Text("Programa",
            style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                decoration: TextDecoration.none)),
        SizedBox(
          width: 10,
        ),
        Text("Alumnos",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                decoration: TextDecoration.none)),
        SizedBox(
          width: 10,
        ),
        Text("Plan de estudios",
            style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                decoration: TextDecoration.none)),
        SizedBox(
          width: 10,
        ),
        Text("Tésis",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                decoration: TextDecoration.none)),
        LoginButton(),
      ],
    );
  }
}
