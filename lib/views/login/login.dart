import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lcchub/config/microsoftmsal.dart';
import 'package:lcchub/style/colors.dart';
import 'package:lcchub/views/homepage/homepage.dart';
import 'package:lcchub/views/student/studentDashboard.dart';

import '../../helpers/sizeconfig.dart';
//import flutter svg
import 'package:flutter_svg/flutter_svg.dart';

class LoginAuth extends StatefulWidget {
  const LoginAuth({super.key});

  @override
  State<LoginAuth> createState() => _LoginAuthState();
}

class _LoginAuthState extends State<LoginAuth> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        body: SingleChildScrollView(
            child: SizedBox(
      height: SizeConfig.screenHeight,
      width: SizeConfig.screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            //container shadow
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            //container centered

            alignment: Alignment.center,

            margin: const EdgeInsets.only(left: 50, right: 100),
            height: MediaQuery.of(context).size.height > 600
                ? SizeConfig.screenHeight! * .7
                : SizeConfig.screenHeight! * .9,
            width: 1080,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 8,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          //image logo svg
                          Container(
                            margin: const EdgeInsets.only(top: 50),
                            child: SvgPicture.asset(
                              'assets/logo-lcc-letras.svg',
                              height: 200,
                              width: 200,
                            ),
                          ),
                          //
                          Column(
                            children: [
                              SizedBox(
                                height: 35,
                                width: 200,
                                child: ElevatedButton(
                                    onPressed: () async {
                                      LoginMicrosoft logininstance =
                                          LoginMicrosoft(context: context);
                                      Map<String, dynamic> alumno =
                                          await logininstance.login();
                                      if (alumno['status'] == 'success') {
                                        // ignore: use_build_context_synchronously
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (BuildContext
                                                        context) =>
                                                    const StudentHomePage()));
                                      }
                                    },
                                    child: Text(
                                      "Iniciar sesión",
                                      style: GoogleFonts.roboto(),
                                    )),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 35,
                                width: 200,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side: BorderSide(color: AppColors.barBg),
                                      foregroundColor: AppColors.barBg,
                                    ),
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomePage()),
                                          (route) => false);
                                    },
                                    child: Text(
                                      "Continuar como invitado",
                                      style: GoogleFonts.roboto(),
                                    )),
                              ),
                            ],
                          ),
                          Text(
                            "Universidad de Sonora",
                            style:
                                GoogleFonts.roboto(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    )),
                if (MediaQuery.of(context).size.width > 900)
                  Expanded(
                      flex: MediaQuery.of(context).size.width <= 1300 ? 6 : 15,
                      child: Container(
                          color: Colors.grey,
                          child: Container(
                              child: Container(
                            //image full screen
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/LCC_login.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            //child text
                          ))))
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
