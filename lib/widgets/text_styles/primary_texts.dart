import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderText extends StatelessWidget {
  String? text;
  HeaderText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(text!,
            style: GoogleFonts.robotoCondensed(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )));
  }
}

class ButtonText extends StatelessWidget {
  String? text;
  ButtonText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        style: GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ));
    ;
  }
}
