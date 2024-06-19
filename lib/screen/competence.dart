// screen/competence.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../data.dart';

class CompetenceScreen extends StatelessWidget {
  const CompetenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compétences'),
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              buildCategory('Data', bdd, imageHeight: 70, imageWidth: 130),
              const SizedBox(height: 70),
              buildCategory('Frontend', front),
              const SizedBox(height: 70),
              buildCategory('Backend', back),
              const SizedBox(height: 70),
              buildCategory('Mobile App', mobile),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategory(String title, List<String> skills, {double imageHeight = 60, double imageWidth = 80}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 40,
          runSpacing: 20,
          children: skills.map((url) => Image.asset(url, height: imageHeight, width: imageWidth)).toList(),
        ),
      ],
    );
  }
}
