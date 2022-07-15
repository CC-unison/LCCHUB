import 'package:flutter/material.dart';

import '../../config/responsive.dart';
import '../../config/size_config.dart';
import '../buttons/primary_buttons.dart';
import '../cards/card.dart';
import '../footer/footer.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 26, 113, 184),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.verified_user, size: 20, color: Colors.white),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Text("Programa",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            decoration: TextDecoration.none)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Alumnos",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            decoration: TextDecoration.none)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Plan de estudios",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            decoration: TextDecoration.none)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Tésis",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            decoration: TextDecoration.none)),
                    LogoutButton(),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: SizeConfig.blockSizeVertical! * 5),
              child: Row(
                children: const [
                  Text("Licienciatura en\nCiencias de la Computación",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 34,
                          color: Colors.white,
                          decoration: TextDecoration.none)),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
            ),
            if (Responsive.isDesktop(context))
              Wrap(
                spacing: 20,
                children: const [
                  InfoCardTablero(),
                  InfoCardTablero(),
                  InfoCardTablero(),
                ],
              ),
            if (Responsive.isTablet(context))
              Wrap(
                spacing: 20,
                children: const [
                  InfoCardTablero(),
                  InfoCardTablero(),
                ],
              ),
            if (Responsive.isMobile(context))
              Wrap(
                spacing: 20,
                children: const [
                  InfoCardTablero(),
                ],
              ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 2,
            ),
            Container(
              width: 100,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [],
              ),
            )
          ]),
        ),
        Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 255, 255, 255),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Column(
              children: [
                Column(
                  children: [
                    const Text("Lorem Ipsum..."),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical!,
                    ),
                    const Text(
                        "Lorem Ipsum is simply dummy text of the\n printing and typesetting industry.\nLorem Ipsum "),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 3,
                ),
                Column(
                  children: [
                    const Text("Lorem Ipsum..."),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical!,
                    ),
                    const Text(
                        "Lorem Ipsum is simply dummy text of the\n printing and typesetting industry.\nLorem Ipsum "),
                  ],
                ),
                if (Responsive.isMobile(context))
                  const Icon(Icons.image, size: 60)
              ],
            ),
            if (Responsive.isDesktop(context) || Responsive.isTablet(context))
              const Icon(Icons.image, size: 120)
          ]),
        ),
        const Footer(),
      ]),
    );
  }
}
