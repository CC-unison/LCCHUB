import 'package:flutter/material.dart';
import 'package:lcchub/widgets/text_styles/primary_texts.dart';

class LoginButton extends StatelessWidget {
  final String text;
  const LoginButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (() {}),
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      ),
      child: ButtonText(text),
    );
  }
}

class LoginButtonInvitado extends StatelessWidget {
  final String text;
  const LoginButtonInvitado({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (() {}),
      style: OutlinedButton.styleFrom(
        primary: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
      ),
      child: ButtonText(text),
    );
  }
}
