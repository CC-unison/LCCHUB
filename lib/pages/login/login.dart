import 'package:flutter/material.dart';
import 'package:lcchub/widgets/buttons/general_button.dart';

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
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                "Lic. en Ciencias de la Computación",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 28, bottom: 12),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Iniciar sesión"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 120),
                      child: OutlinedButton(
                          onPressed: () {},
                          child: const Text("Continuar como invitado")),
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
