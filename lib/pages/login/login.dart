import 'package:flutter/material.dart';
import 'package:lcchub/widgets/buttons/general_button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            height: 1000,
            child: ListView(
              shrinkWrap: true,
              children: [
                Center(
                  child: Container(
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
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      "Lic. en Ciencias de la Computación",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 300),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 68, bottom: 12),
                              child: GeneralButton(text: "Iniciar sesión"),
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
                              padding: EdgeInsets.only(top: 12, bottom: 64),
                              child: GeneralButton(
                                  text: "Continuar como invitado"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text("Universidad de Sonora"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
