import 'package:flutter/material.dart';

import '../../config/responsive.dart';

import 'custom_expansion_tile.dart';

class Footer extends StatefulWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 31, 41, 55),
      child: SingleChildScrollView(
        child: Column(
          children: [
            if (Responsive.isMobile(context) || Responsive.isTablet(context))
              const FooterMobile()
            else
              const FooterWeb(),
          ],
        ),
      ),
    );
  }
}

class FooterMobile extends StatelessWidget {
  const FooterMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 100, left: 100),
      child: Column(
        children: const [
          CustomExpansionTile(
            textColor: Color.fromARGB(255, 255, 255, 255),
            iconColor: Color.fromARGB(255, 255, 255, 255),
            leading: Icon(Icons.phone,
                color: Color.fromARGB(255, 105, 144, 235), size: 20),
            title: Text(
              "Contacto",
              style: TextStyle(color: Color.fromARGB(255, 105, 144, 235)),
            ),
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(left: 30),
                title: Text("Tel y Fax\n(662) 259.2155\nExt: 2482 y 2494",
                    style:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              ),
            ],
          ),
          CustomExpansionTile(
            textColor: Color.fromARGB(255, 255, 255, 255),
            iconColor: Color.fromARGB(255, 255, 255, 255),
            leading: Icon(Icons.location_on,
                color: Color.fromARGB(255, 105, 144, 235), size: 20),
            title: Text(
              "Dirección",
              style: TextStyle(color: Color.fromARGB(255, 105, 144, 235)),
            ),
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(left: 30),
                title: Text(
                    "Edificio 3K4, Ciencias de la computación,\nBoulevard Luis Encinas y Rosales s/n,\nCol.Centro,\nHermosillo,Sonora. CP 83000",
                    style:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              ),
            ],
          ),
          CustomExpansionTile(
            textColor: Color.fromARGB(255, 255, 255, 255),
            iconColor: Color.fromARGB(255, 255, 255, 255),
            leading: Icon(Icons.mail,
                color: Color.fromARGB(255, 105, 144, 235), size: 20),
            title: Text(
              "Correo",
              style: TextStyle(color: Color.fromARGB(255, 105, 144, 235)),
            ),
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(left: 30),
                title: Text("computacion@mat.uson.mx",
                    style:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FooterWeb extends StatelessWidget {
  const FooterWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45, bottom: 45),
      child: Container(
        margin: const EdgeInsets.only(left: 100, right: 100),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 60),
                      child: Row(
                        children: const [
                          Icon(Icons.phone,
                              color: Color.fromARGB(255, 105, 144, 235),
                              size: 20),
                          Text("Contacto",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 105, 144, 235))),
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Text("Tel y Fax\n(662) 259.2155\nExt: 2482 y 2494",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 10)),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.wb_twilight_outlined,
                            color: Color.fromARGB(255, 105, 144, 235),
                            size: 40),
                        Icon(Icons.facebook,
                            color: Color.fromARGB(255, 105, 144, 235), size: 40)
                      ],
                    ),
                  ],
                )
              ]),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 80),
                    child: Row(
                      children: const [
                        Icon(Icons.location_on,
                            color: Color.fromARGB(255, 105, 144, 235),
                            size: 20),
                        Text("Dirección",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Color.fromARGB(255, 105, 144, 235))),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                          "Edificio 3K4, Ciencias\nde la computación,\nBoulevard Luis\nEncinas y Rosales s/n,\nCol.Centro,\nHermosillo,Sonora.\n CP 83000",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 10)),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 120),
                    child: Row(
                      children: const [
                        Icon(Icons.mail,
                            color: Color.fromARGB(255, 105, 144, 235),
                            size: 20),
                        Text("Correo",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Color.fromARGB(255, 105, 144, 235))),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
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
    );
  }
}
