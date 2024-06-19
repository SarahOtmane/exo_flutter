// components/imagestack.dart
import 'package:flutter/material.dart';

class ImageStack extends StatelessWidget {
  final String imgName;
  final String text;

  const ImageStack({super.key, required this.imgName, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent, width: 5),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(imgName),
                  fit: BoxFit.fitHeight,
                ))),
        Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.75),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(text),
                ))),
      ],
    );
  }
}
