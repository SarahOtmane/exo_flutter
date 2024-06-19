import 'package:flutter/material.dart';
import '../data.dart';
import '../components/experience_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expériences'),
        backgroundColor: Colors.grey, // Fond gris pour l'AppBar
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
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              ...experiences.map((experience) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ExperienceCard(experience: experience),
              )).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
