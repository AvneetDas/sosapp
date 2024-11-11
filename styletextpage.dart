import 'package:flutter/material.dart';

class Styletextpage extends StatelessWidget {
  const Styletextpage({super.key, required this.pagetext, required this.size});

  final String pagetext;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      pagetext,
      style: TextStyle(
        color: Colors.amber,
        fontSize: size,
      ),
    );
  }
}
