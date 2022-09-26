import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
            //svg logo
            const VerticalDivider(
              color: Colors.transparent,
              width: 10,
            ),
            SvgPicture.asset(
              "assets/logo-lcc-blanco.svg",
              height: 50,
              width: 50,
            ),
            const VerticalDivider(
              color: Colors.transparent,
              width: 3,
            ),
            if (SizeConfig.screenWidth! > 900)
              Text('Ciencias de la Computación',
                  style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
          ],
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (SizeConfig.screenWidth! >= 650)
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
            //image banner
            Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight! * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/LCC_invitados.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical! * 7,
                    left: SizeConfig.blockSizeHorizontal! * 10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(.1),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Text(
                      "Ciencias de la Computación",
                      style: GoogleFonts.robotoCondensed(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 2,
                    ),
                    Text(
                      "Ciencias Exactas",
                      style: GoogleFonts.robotoCondensed(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
