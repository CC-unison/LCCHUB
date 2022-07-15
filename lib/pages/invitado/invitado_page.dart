import 'package:flutter/material.dart';
import 'package:lcchub/config/responsive.dart';
import 'package:lcchub/config/size_config.dart';
import 'package:lcchub/widgets/buttons/primary_buttons.dart';

import '../../widgets/cards/card.dart';
import '../../widgets/footer/footer.dart';
import '../../widgets/header/header.dart';

class InvitadoPage extends StatefulWidget {
  const InvitadoPage({Key? key}) : super(key: key);

  @override
  _InvitadoPageState createState() => _InvitadoPageState();
}

class _InvitadoPageState extends State<InvitadoPage> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 26, 113, 184),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.verified_user, size: 20, color: Colors.white),
                  SizedBox(
                    width: 10,
                  ),
                  Header(),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 5,
              ),
              Container(
                width: double.infinity,
                padding:
                    EdgeInsets.only(left: SizeConfig.blockSizeVertical! * 5),
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: const [],
                ),
              )
            ]),
          ),
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
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
                  if (Responsive.isDesktop(context) ||
                      Responsive.isTablet(context))
                    const Icon(Icons.image, size: 120)
                ]),
          ),
          Footer(),
        ]),
      ),
    );
  }
}

