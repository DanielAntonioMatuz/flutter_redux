import 'package:flutter/material.dart';
import 'package:upwind_redux/pages/drawer_menu.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class About extends StatelessWidget {

  final List<String> titles = ["Isaac Bezares Barajas", "Daniel A. Matuz Alvarado",
   "Martín A. Domínguez López", "Rogelio Carpio Ovando"];

  final dataAbout = "Upwind #TEAM";

  final List<Widget> images = [
      ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "assets/images/isaac.jpg",
          fit: BoxFit.cover,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "assets/images/daniel.jpg",
          fit: BoxFit.cover,
        ),
      ),
    ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "assets/images/martin.jpg",
          fit: BoxFit.cover,
        ),
      ),
    ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "assets/images/rogelio.jpg",
          fit: BoxFit.cover,
        ),
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de Upwind'),
      ),
      drawer: DrawerMenu(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
            ),
            Text(
              dataAbout,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
            ),
            Text(
              "Upwind es un equipo de desarrollo Mexicano, integrado por 4 miembros, el equipo tiene origen de la ciudad de Suchiapa, y se creo en el año 2019",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Container(
                child: VerticalCardPager(
                  titles: titles,  // required
                  images: images,  // required
                  textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), // optional
                  onPageChanged: (page) { // optional
                  },
                  onSelectedItem: (index) { // optional
                  },
                  initialPage: 0, // optional
                  align : ALIGN.CENTER // optional
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}