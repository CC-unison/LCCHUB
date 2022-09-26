import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lcchub/config/microsoftmsal.dart';

class StudentHomePage extends StatefulWidget {
  const StudentHomePage({super.key});

  @override
  State<StudentHomePage> createState() => _StudentHomePageState();
}

class _StudentHomePageState extends State<StudentHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LCC HUB"),
        actions: [
          ElevatedButton(
            onPressed: () {
              LoginMicrosoft loginMicrosoft = LoginMicrosoft(context: context);
              loginMicrosoft.logout();
            },
            child: const Text("Cerrar sesión"),
          )
        ],
      ),
      body: Container(
        child: const Text("Student Home Page"),
      ),
    );
  }
}
