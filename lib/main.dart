import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lcchub/responsive/responsive_layout.dart';
import 'package:lcchub/style/colors.dart';
import 'package:lcchub/views/homepage/homepage.dart';
import 'package:lcchub/views/splashScreen.dart';

import 'config/firebase_options.dart';

void main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LCC-Hub",
      //theme color
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch().copyWith(primary: AppColors.barBg),
      ),
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: const Scaffold(body: SplashScreen()),
    );
  }
}
