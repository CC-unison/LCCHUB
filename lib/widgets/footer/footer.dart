import 'package:flutter/material.dart';

import '../../config/responsive.dart';

class Footer extends StatefulWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  late final List<FooterItem> _items = <FooterItem>[
    FooterItem(
        icon: Icons.phone,
        header: "Contacto",
        body: "Tel y Fax\n(662) 259.2155\nExt: 2482 y 2494"),
    FooterItem(
        icon: Icons.location_on,
        header: "Dirección",
        body:
            "Edificio 3K4, Ciencias\nde la computación,\nBoulevard Luis\nEncinas y Rosales s/n,\nCol.Centro,\nHermosillo,Sonora.\n CP 83000"),
    FooterItem(
        icon: Icons.mail, header: "Correo", body: "computacion@mat.uson.mx"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.0,
      color: const Color.fromARGB(255, 31, 41, 55),
      child: SingleChildScrollView(
        child: Column(
          children: [
            if (Responsive.isMobile(context) || Responsive.isTablet(context))
              //Lista de items para el footer
              ExpansionPanelList(
                expandedHeaderPadding: EdgeInsets.all(2),
                dividerColor: Color.fromARGB(255, 105, 144, 235),
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    // Se cambia el valor de isExapanded.
                    _items[panelIndex].isExpanded =
                        !_items[panelIndex].isExpanded;
                  });
                },
                // Se extraen los valores de la lista _items
                children: _items.map((FooterItem item) {
                  //  Cada uno de los paneles de expanisión.
                  return ExpansionPanel(
                    backgroundColor: const Color.fromARGB(255, 31, 41, 55),
                    canTapOnHeader: true,
                    headerBuilder: ((context, isExpanded) {
                      return buildTile(item);
                    }),
                    body: Container(
                      child: Text(item.body,
                          style: TextStyle(
                              color: Color.fromARGB(255, 105, 144, 235))),
                    ),
                    isExpanded: item.isExpanded,
                  );
                }).toList(),
              )
            else
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Container(
                  margin: const EdgeInsets.only(left: 100, right: 100),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 60),
                                child: Row(
                                  children: const [
                                    Icon(Icons.phone,
                                        color:
                                            Color.fromARGB(255, 105, 144, 235),
                                        size: 20),
                                    Text("Contacto",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 105, 144, 235))),
                                  ],
                                ),
                              ),
                              Row(
                                children: const [
                                  Text(
                                      "Tel y Fax\n(662) 259.2155\nExt: 2482 y 2494",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
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
                                          color: Color.fromARGB(
                                              255, 105, 144, 235))),
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
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
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
                                          color: Color.fromARGB(
                                              255, 105, 144, 235))),
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
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 10)),
                              ],
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
          ],
        ),
      ),
    );
  }

  ListTile buildTile(FooterItem item) {
    return ListTile(
      leading: Icon(
        item.icon,
        color: Color.fromARGB(255, 105, 144, 235),
      ),
      title: Text(item.header,
          style: TextStyle(color: Color.fromARGB(255, 105, 144, 235))),
    );
  }
}

class FooterItem {
  FooterItem(
      {this.isExpanded = false,
      required this.icon,
      required this.header,
      required this.body});

  bool isExpanded;
  final IconData icon;
  final String header;
  final String body;
}
