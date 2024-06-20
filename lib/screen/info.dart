// screen/home.dart
import 'package:flutter/material.dart';
import 'package:cv_flutter/components/imagestack.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info +'),
        backgroundColor: Colors.grey,
        actions: [
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.twitter),
            onPressed: () {
              // Action pour Twitter
            },
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.facebook),
            onPressed: () {
              // Action pour Facebook
            },
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.instagram),
            onPressed: () {
              // Action pour Instagram
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const ImageStack(imgName: 'assets/paysage1.jpeg', text: "Paysage"),
              const SizedBox(height: 10),
              Text('Voyager est l\'une de mes activités préferes.'),
              const SizedBox(height: 40),
              const ImageStack(imgName: 'assets/paysage2.webp', text: "Montagnes"),
              Text('Voyager est l\'une de mes activités préferes.'),
            ],
          ),
        ),
      ),
    );
  }
}
