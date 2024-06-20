import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.grey, // Fond gris pour cette section seulement
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 70.0),
              child: Column(
                children: <Widget>[
                  const Text(
                    'Sarah Otmane',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.5, // L'icône prend 50% de la largeur
                    child: const Icon(
                      Icons.person,
                      size: 200, // Ajuster la taille de l'icône ici
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      FaIcon(FontAwesomeIcons.twitter),
                      SizedBox(width: 10),
                      FaIcon(FontAwesomeIcons.facebook),
                      SizedBox(width: 10),
                      FaIcon(FontAwesomeIcons.instagram),
                    ],
                  ),
                ],
              ),
            ),
            // Ajout du tableau ici
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Table(
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.email),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('sarahotmane02@gmail.com'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.phone),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('06 03 28 52 98'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.location_on),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Boulogne Billancourt (92)'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.web),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('https://github.com/SarahOtmane'),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.info),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Lorem ipsum dolor sit amet consectetur adipiscing elit.'),
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
