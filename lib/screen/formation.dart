import 'package:flutter/material.dart';
import '../data.dart';
import '../components/formation_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FormationScreen extends StatelessWidget {
  const FormationScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formations'),
        backgroundColor: Colors.grey, // Fond gris pour l'AppBar
        actions: [
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.twitter),
            onPressed: () {
            },
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.facebook),
            onPressed: () {
            },
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.instagram),
            onPressed: () {
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              ...formations.map((formation) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: FormationCard(formation: formation),
              )).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
