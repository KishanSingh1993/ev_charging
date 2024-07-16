import 'package:flutter/material.dart';

class InfoCarPressure extends StatelessWidget {
  const InfoCarPressure({super.key});

  @override
  Widget build(BuildContext context) {
    final querySize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Tyre Pressure",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 25)),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '37',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 60),
                        ),
                        TextSpan(
                            text: 'PSI\n',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 20)),
                        TextSpan(
                            text: 'Optimum',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.blue,
                                fontSize: 18)),
                      ],
                    ),
                  ),
                  SizedBox(height: querySize.height * 0.01),
                  const Row(
                    children: [
                      Icon(Icons.arrow_back_ios_outlined, color: Colors.grey),
                      Text("front(left)"),
                      Icon(Icons.arrow_forward_ios_outlined,
                          color: Colors.grey),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: -80,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image.asset(
                "assets/images/wheels.png",
                width: querySize.width * 0.65,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
