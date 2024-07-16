import 'package:flutter/material.dart';

class HomeChargingStation extends StatelessWidget {
  const HomeChargingStation({super.key});

  @override
  Widget build(BuildContext context) {
    final querySize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      "assets/images/station_2.jpg",
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: SizedBox(
                            width: querySize.width * 0.55,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "BP Pulse",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                const Text(
                                  "ABC Street, Casablanca, Morocco",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    overflow: TextOverflow.clip,
                                  ),
                                ),
                                const Text(
                                  "Distance: 350",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.electric_bolt_outlined,
                                      color: Colors.blue,
                                      size: querySize.width * 0.04,
                                    ),
                                    const Text(
                                      "Compatible - CCS2",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    SizedBox(width: querySize.width * 0.01),
                                    Icon(
                                      Icons.star,
                                      color: Colors.blue,
                                      size: querySize.width * 0.04,
                                    ),
                                    const Text(
                                      "4.3",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: querySize.width * -0.1,
            bottom: querySize.height * -0.01,
            child: Image.asset(
              "assets/images/charger.png",
              scale: 2.7,
            ),
          ),
        ],
      ),
    );
  }
}
