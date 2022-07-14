import 'package:flutter/material.dart';
import 'package:lcchub/pages/alumno/alumno_page.dart';
import 'package:lcchub/pages/invitado/invitado_page.dart';
import 'package:lcchub/pages/login/login.dart';
import 'package:lcchub/pages/login/login_page.dart';
import 'package:lcchub/responsive/responsive_layout.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String? currentUser;
  final storage = const FlutterSecureStorage();

  getLoginAccess() async {
    currentUser = await storage.read(key: 'accessToken');
    if (currentUser == null || currentUser!.isEmpty) {
      // print("Splash's if started");
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => ResponsiveLayout(
                    mobilBody: InvitadoPage(), webBody: InvitadoPage())));
      });
    } else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => ResponsiveLayout(
                  mobilBody: AlumnoPage(), webBody: AlumnoPage())));
    }
    ;
  }

  @override
  initState() {
    super.initState();
    getLoginAccess();
    //currentUser = await storage.read(key: 'accessToken');
    //  print(currentUser);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 0, 255, 153),
                Color.fromARGB(255, 0, 159, 90),
                Color.fromARGB(255, 0, 156, 99),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                // Image.asset(
                //   "lib/images/login_image.png",
                //   height: 300.0,
                //   width: 300.0,
                // ),
                Text(
                  "LCC-HUB",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
              ],
            ),
            CircularProgressIndicator(
              strokeWidth: 12,
              valueColor: AlwaysStoppedAnimation<Color>(
                Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Column(
              children: [
                Text("Powered by"),
                Text("XD"),
                //Image.asset("images/CodingSolved Logo.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
