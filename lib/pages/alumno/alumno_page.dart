import 'package:flutter/material.dart';
import 'package:lcchub/pages/invitado/invitado_page.dart';
//import '../../config/responsive.dart';
import '../../config/size_config.dart';
//import '../../widgets/cards/card.dart';
import 'package:lcchub/widgets/navbar/NavBar.dart';

class AlumnoPage extends StatefulWidget {
  AlumnoPage({Key? key}) : super(key: key);

  @override
  _AlumnoPageState createState() => _AlumnoPageState();
}

class _AlumnoPageState extends State<AlumnoPage> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: InvitadoPage(),
    );
  }
}
