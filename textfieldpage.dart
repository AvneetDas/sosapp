import 'package:flutter/material.dart';

class Textfieldpage extends StatelessWidget {
  const Textfieldpage(
      {super.key,
      required this.controller,
      required this.hidetext,
      required this.hinttext});

  final controller;
  final String hinttext;
  final bool hidetext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        obscureText: hidetext,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
            borderRadius: BorderRadius.all(Radius.circular(7)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 210, 206, 206),
            ),
            borderRadius: BorderRadius.all(Radius.circular(7)),
          ),
          hintText: hinttext,
          focusColor: const Color.fromARGB(255, 245, 241, 241),
          hintStyle: const TextStyle(color: Color.fromARGB(255, 73, 72, 72)),
        ),
        controller: controller,
        style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      ),
    );
  }
}
