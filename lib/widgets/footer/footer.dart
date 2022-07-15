import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 31, 41, 55),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(children: [
              Column(
                children: [
                  Row(
                    children: const [
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
                    children: const [
                      Text("Tel y Fax",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 10)),
                    ],
                  ),
                  Row(
                    children: const [
                      Text("(662) 259.2155",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 10)),
                    ],
                  ),
                  Row(
                    children: const [
                      Text("Ext: 2482 y 2494",
                          textAlign: TextAlign.end,
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
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
    );
  }
}

