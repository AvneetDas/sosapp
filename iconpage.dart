import 'package:flutter/material.dart';

class Iconpage extends StatelessWidget {
  const Iconpage({
    super.key,
    required this.icon,
    required this.text,
    required this.onTapfunction,
  });

  final icon;
  final String text;

  final Future<void> Function() onTapfunction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          IconButton(
            onPressed: onTapfunction,
            icon: Icon(
              icon,
            ),
            iconSize: 100,
            style: IconButton.styleFrom(
              overlayColor: Colors.transparent,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
    );
  }
}
