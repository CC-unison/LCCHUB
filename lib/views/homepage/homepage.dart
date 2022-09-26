import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lcchub/config/microsoftmsal.dart';
import 'package:lcchub/helpers/sizeconfig.dart';
import 'package:lcchub/style/colors.dart';
import 'package:lcchub/views/login/login.dart';

//import shared_preferences.dart
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: AppColors.barBg,
        title: Row(
          children: [
            const Text("LCC HUB"),
            //svg logo
            SvgPicture.asset(
              "assets/logo-lcc-letras.svg",
              height: SizeConfig.blockSizeVertical! * 5,
              width: SizeConfig.blockSizeHorizontal! * 5,
            ),
          ],
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Programa"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Alumnos"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Plan de estudios"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Tésis"),
                  ),
                ],
              ),
              VerticalDivider(
                width: SizeConfig.blockSizeHorizontal! * 2,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.barBg),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side:
                          BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                      //margin
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LoginAuth()));
                },
                child: const Text("Iniciar sesión"),
              ),
              SizedBox(
                width: SizeConfig.blockSizeHorizontal! * 2,
              ),
            ],
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
