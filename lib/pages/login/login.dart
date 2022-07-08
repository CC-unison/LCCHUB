import 'package:flutter/material.dart';
import 'package:lcchub/widgets/buttons/general_button.dart';
import 'package:lcchub/widgets/buttons/primary_buttons.dart';
import 'package:lcchub/widgets/text_styles/primary_texts.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 40),
              height: 200.0,
              width: 200.0,
              padding: const EdgeInsets.only(top: 50, bottom: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                border: Border.all(color: Colors.black12),
              ),
              child: const Center(
                child: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 50.0,
                  semanticLabel: "LCC logo",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: HeaderText(
                "Lic. en Ciencias de la Computación",
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300),
              child: Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 28, bottom: 12),
                      child: LoginButton(text: "Iniciar sesión"),
                    ),
                  ),
                ],
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300),
              child: Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 12, bottom: 120),
                      child:
                          LoginButtonInvitado(text: "Continuar como invitado"),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Universidad de Sonora"),
            ),
          ],
        ),
      ),
    );
  }
}
