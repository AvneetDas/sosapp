import 'package:flutter/material.dart';

class Buttontextwidget extends StatelessWidget {
  const Buttontextwidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(overlayColor: Colors.transparent),
      child: Text(
        text,
        style: TextStyle(color: Colors.amber),
      ),
    );
  }
}
