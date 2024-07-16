import 'package:flutter/material.dart';

class InfoCarDate extends StatelessWidget {
  const InfoCarDate({super.key});

  @override
  Widget build(BuildContext context) {

    final querySize = MediaQuery.of(context).size;

    return SizedBox(
      width: querySize.width * 0.44,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Last Service Date", style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                  fontSize: 20)),
              Text("05 - 07\n2024", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: querySize.width * 0.08)),
            ],
          ),
        ),
      ),
    );
  }
}
