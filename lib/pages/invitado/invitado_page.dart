import 'package:flutter/material.dart';
import 'package:lcchub/config/responsive.dart';
import 'package:lcchub/config/size_config.dart';
import 'package:lcchub/widgets/buttons/primary_buttons.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'components/card.dart';

class InvitadoPage extends StatefulWidget {
  InvitadoPage({Key? key}) : super(key: key);

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
            color: Color.fromARGB(255, 26, 113, 184),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.verified_user, size: 20, color: Colors.white),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                      LoginButton(),
                    ],
                  ),
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
                  children: [
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
                  children: [
                    InfoCardTablero(),
                    InfoCardTablero(),
                    InfoCardTablero(),
                  ],
                ),
              if (Responsive.isTablet(context))
                Wrap(
                  spacing: 20,
                  children: [
                    InfoCardTablero(),
                    InfoCardTablero(),
                  ],
                ),
              if (Responsive.isMobile(context))
                Wrap(
                  spacing: 20,
                  children: [
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
                  children: [],
                ),
              )
            ]),
          ),
          Container(
            width: double.infinity,
            color: Color.fromARGB(255, 255, 255, 255),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Text("Lorem Ipsum..."),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical!,
                          ),
                          Text(
                              "Lorem Ipsum is simply dummy text of the\n printing and typesetting industry.\nLorem Ipsum "),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 3,
                      ),
                      Column(
                        children: [
                          Text("Lorem Ipsum..."),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical!,
                          ),
                          Text(
                              "Lorem Ipsum is simply dummy text of the\n printing and typesetting industry.\nLorem Ipsum "),
                        ],
                      ),
                      if (Responsive.isMobile(context))
                        Icon(Icons.image, size: 60)
                    ],
                  ),
                  if (Responsive.isDesktop(context) ||
                      Responsive.isTablet(context))
                    Icon(Icons.image, size: 120)
                ]),
          ),
          Container(
            width: double.infinity,
            color: Color.fromARGB(255, 31, 41, 55),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.phone,
                                color: Color.fromARGB(255, 105, 144, 235),
                                size: 20),
                            Text("Contacto",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 105, 144, 235))),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tel y Fax",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 10)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("(662) 259.2155",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 10)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Ext: 2482 y 2494",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 10)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.wb_twilight_outlined,
                                color: Color.fromARGB(255, 105, 144, 235),
                                size: 40),
                            Icon(Icons.facebook,
                                color: Color.fromARGB(255, 105, 144, 235),
                                size: 40)
                          ],
                        ),
                      ],
                    )
                  ]),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on,
                              color: Color.fromARGB(255, 105, 144, 235),
                              size: 20),
                          Text("Dirección",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 105, 144, 235))),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              "Edificio 3K4, Ciencias\nde la computación,\nBoulevard Luis\nEncinas y Rosales s/n\n, Col.Centro,\n,Hermosillo,Sonora.\n. CP 83000",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.mail,
                              color: Color.fromARGB(255, 105, 144, 235),
                              size: 20),
                          Text("Correo",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 105, 144, 235))),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("computacion@mat.uson.mx",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}
