import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lcchub/controller/auth/getAccessToken.dart';
import 'package:lcchub/views/homepage/homepage.dart';
//import shared_preferences.dart
import 'package:shared_preferences/shared_preferences.dart';

import 'student/studentDashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      //get access token with shared preferences
      await getAccessToken().then((value) {
        //if access token is null, redirect to login page
        value == null
            ? Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const HomePage()))
            :
            //if access token is not null, redirect to student dashboard
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const StudentHomePage()));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Text("Splash Screen"),
      ),
    );
  }
}
