import 'package:flutter/material.dart';

class InfoCarDistance extends StatelessWidget {
  const InfoCarDistance({super.key});

  @override
  Widget build(BuildContext context) {
    final querySize = MediaQuery.of(context).size;

    return SizedBox(
      width: querySize.width * 0.44,
      child: Card(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Total Distance",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white60,
                    fontSize: 18),
              ),
               SizedBox(height: querySize.height * 0.02),
              Row(
                children: [
                  Image.asset(
                    "assets/images/distance_image.png",
                    height: 70,
                    width: 70,
                  ),
                  const SizedBox(width: 16),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("661",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: querySize.width * 0.07)),
                      Text("Km",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: querySize.width * 0.06)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
