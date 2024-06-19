import 'package:flutter/material.dart';
import '../data.dart';
import '../components/experience_card.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Expériences',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            ...experiences.map((experience) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ExperienceCard(experience: experience),
            )).toList(),
          ],
        ),
      ),
    );
  }
}