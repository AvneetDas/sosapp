import 'package:flutter/material.dart';
import 'package:semicolon/iconpage.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  final String newsurl = "https://fetchnews.streamlit.app/";
  final String chatboturl = "https://chat-bot-app-100.streamlit.app/";
  final String safetyLaunch = "https://crime-map-locator.streamlit.app/";
  final String Sos = "https://sos-alert.streamlit.app/";

  Future<void> SosLauncher() async {
    final url = Uri.parse(Sos);

    if (!await launchUrl(url)) {
      throw "cannot open $url";
    }
  }

  Future<void> safetyLauncher() async {
    final url = Uri.parse(safetyLaunch);

    if (!await launchUrl(url)) {
      throw "cannot open $url";
    }
  }

  Future<void> chatbotLauncher() async {
    final url = Uri.parse(chatboturl);

    if (!await launchUrl(url)) {
      throw "cannot open $url";
    }
  }

  Future<void> newsLauncher() async {
    final url = Uri.parse(newsurl);

    if (!await launchUrl(url)) {
      throw "cannot open $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 73, 73, 72)),
          height: 60,
          width: double.infinity,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "HOME",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //ICON BUtton
            Iconpage(
              icon: Icons.contact_emergency_rounded,
              text: "Contact",
              onTapfunction: newsLauncher,
            ),
            const SizedBox(
              width: 100,
            ),
            Iconpage(
              icon: Icons.health_and_safety,
              text: "Safety Locator",
              onTapfunction: safetyLauncher,
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Iconpage(
              icon: Icons.newspaper_rounded,
              text: "News",
              onTapfunction: newsLauncher,
            ),
            const SizedBox(
              width: 100,
            ),
            Iconpage(
              icon: Icons.sos_outlined,
              text: "SOS",
              onTapfunction: SosLauncher,
            ),
          ],
        ),
        const SizedBox(
          height: 70,
        ),
        SizedBox(
          height: 50,
          width: 400,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(0, 97, 78, 98),
                surfaceTintColor: Colors.transparent,
                enableFeedback: false),
            onPressed: chatbotLauncher,
            child: const Text("Chat Bot"),
          ),
        )
      ],
    );
  }
}
