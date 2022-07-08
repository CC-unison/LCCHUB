import 'package:flutter/material.dart';
import 'package:lcchub/pages/login/login.dart';
import 'package:lcchub/widgets/centered_view/centered_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CenteredView(
        child: Row(
          children: [
            const Expanded(child: Login()),
            //*********************************** */
            // Icono
            Expanded(
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: const Center(
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.pink,
                    size: 50.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
