// screen/device.dart
import 'package:flutter/material.dart';
import 'info.dart';
import 'formation.dart';
import 'experience.dart';
import 'competence.dart';
import 'profil.dart';

class DeviceScreen extends StatefulWidget {
  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  int _currentScreen = 0;
  final List<Widget> _screenList = [
    const ProfilScreen(),
    const ExperienceScreen(),
    const FormationScreen(),
    const CompetenceScreen(),
    const InfoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          iconSize: 35,
          currentIndex: _currentScreen,
          onTap: onTabTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Profil'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Experience'),
            BottomNavigationBarItem(
                icon: Icon(Icons.book_online), label: 'Formation'),
            BottomNavigationBarItem(icon: Icon(Icons.donut_large), label: 'Competences'),
            BottomNavigationBarItem(icon: Icon(Icons.donut_large), label: 'Info')
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }
}
