import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lcchub/config/microsoftmsal.dart';
import 'package:lcchub/pages/login/login.dart';
import 'package:lcchub/style/colors.dart';
import 'package:lcchub/views/login/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: AppColors.barBg,
        title: const Text("LCC HUB"),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const LoginAuth()));
            },
            child: const Text("Iniciar sesión"),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            const Text("Home Page"),
          ],
        ),
      ),
    );
  }
}
