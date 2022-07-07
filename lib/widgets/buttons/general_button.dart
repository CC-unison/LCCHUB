import 'package:flutter/material.dart';

class GeneralButton extends StatelessWidget {
  final String text;
  const GeneralButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (() {}),
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
      ),
      child: Text(text),
    );
  }
}
