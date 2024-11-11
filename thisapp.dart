import "package:flutter/material.dart";
import 'package:semicolon/sosPage.dart';
import 'package:semicolon/loginpage.dart';
import 'package:semicolon/homepage.dart';
import 'package:semicolon/test.dart';

class Thisapp extends StatefulWidget {
  const Thisapp({super.key});

  @override
  _Thisapp createState() => _Thisapp();
}

class _Thisapp extends State<Thisapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 54, 53, 53)),
          height: double.infinity,
          width: double.infinity,
          child: Homepage(),
        ),
      ),
    );
  }
}
