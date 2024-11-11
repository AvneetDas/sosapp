import 'package:flutter/material.dart';

class Sospage extends StatelessWidget {
  const Sospage({super.key, required this.onTapSOS});

  final void Function() onTapSOS;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Home")),
              SizedBox(
                width: 75,
              ),
              const Text(
                "EMERGENCY",
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 250, 250, 250)),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 300,
              width: 300,
              child: ElevatedButton(
                onPressed: onTapSOS,
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 172, 12, 12)),
                child: const Text(
                  "SOS",
                  style: TextStyle(
                      fontSize: 40, color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 120,
            width: 120,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mic),
              color: const Color.fromARGB(255, 249, 247, 241),
            ),
          )
        ],
      ),
    );
  }
}
