import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.0,
      color: const Color.fromARGB(255, 31, 41, 55),
      child: Padding(
        padding: const EdgeInsets.only(top: 45),
        child: Container(
          margin: EdgeInsets.only(left: 100, right: 100),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(children: [
              Column(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.phone,
                          color: Color.fromARGB(255, 105, 144, 235), size: 20),
                      Text("Contacto",
                          style: TextStyle(
                              color: Color.fromARGB(255, 105, 144, 235))),
                    ],
                  ),
                  Row(
                    children: const [
                      Text("Tel y Fax",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 10)),
                    ],
                  ),
                  Row(
                    children: const [
                      Text("(662) 259.2155",
                          textAlign: TextAlign.left,
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
                          color: Color.fromARGB(255, 105, 144, 235), size: 40),
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
                  margin: EdgeInsets.only(right: 80),
                  child: Row(
                    children: const [
                      Icon(Icons.location_on,
                          color: Color.fromARGB(255, 105, 144, 235), size: 20),
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
                  margin: EdgeInsets.only(right: 120),
                  child: Row(
                    children: const [
                      Icon(Icons.mail,
                          color: Color.fromARGB(255, 105, 144, 235), size: 20),
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
      ),
    );
  }
}
