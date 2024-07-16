import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeCarCard extends StatelessWidget {
  const HomeCarCard({super.key});

  @override
  Widget build(BuildContext context) {

    final querySize = MediaQuery.of(context).size;

    return InkWell(
      onTap: () => GoRouter.of(context).push("/myCarInfo"),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Tata Nexon\nEV 2024",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.speed_outlined),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: '112 KM ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  TextSpan(
                                      text: 'LEFT',
                                      style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.battery_6_bar_outlined),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: '93 % ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  TextSpan(
                                      text: 'CHARGED',
                                      style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: querySize.height * -0.06,
              right: querySize.width * -0.30,
              child: Image.asset(
                "assets/images/volswagen.png",
                scale: 1.35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
