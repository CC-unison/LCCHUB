import 'package:flutter/material.dart';
import 'package:lcchub/splashPage.dart';
//import 'package:lcchub/pages/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LCC-Hub",
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
