import 'package:flutter/material.dart';
import 'package:semicolon/styletextpage.dart';
import 'package:semicolon/textfieldpage.dart';
import 'package:semicolon/buttontextwidget.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});

  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 41, 40, 40)),
            height: 60,
            width: double.infinity,
            child: const Center(
              child: Text(
                "EMERGENCY",
                style: TextStyle(color: Color.fromARGB(255, 224, 224, 223)),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          const Styletextpage(
            pagetext: "GET STARTED",
            size: 40,
          ),
          const Styletextpage(pagetext: "Login To your account", size: 16),
          const SizedBox(
            height: 20,
          ),
          Textfieldpage(
            controller: username,
            hinttext: "Username",
            hidetext: false,
          ),
          Textfieldpage(
            controller: password,
            hidetext: true,
            hinttext: "Password",
          ),
          const Buttontextwidget(
            text: "Forgot Password?",
          ),
          const Buttontextwidget(
            text: "Create Account",
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Login")),
        ],
      ),
    );
  }
}
