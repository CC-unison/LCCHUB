import 'package:flutter/material.dart';
import 'package:lcchub/widgets/buttons/primary_buttons.dart';
import 'package:lcchub/widgets/text_styles/primary_texts.dart';

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
                //*********************************** */
                // Logo de la parte superior
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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 20),
                    child: HeaderText("Lic. En Ciencias de la Computación"),
                  ),
                ),
                //*********************************** */
                // Botones
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //*********************************** */
                    // Botón de inicio de sesión.
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 300),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 68, bottom: 12),
                              child: LoginButton(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //*********************************** */
                    // Botón de invitado.
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 300),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 12, bottom: 64),
                              child: LoginButtonInvitado(
                                  text: "Continuar como invitado"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //*********************************** */
                    // Texto.
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
