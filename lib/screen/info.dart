// screen/home.dart
import 'package:flutter/material.dart';
import 'package:cv_flutter/components/imagestack.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(30),

      ///
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const ImageStack(imgName: 'assets/test.jpeg', text: "Paysage"),
          const ImageStack(imgName: 'assets/test.jpeg', text: "Test")
        ],
      ),
    );
  }
}