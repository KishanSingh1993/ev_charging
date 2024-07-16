import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfoCar extends StatelessWidget {
  const InfoCar({super.key});

  @override
  Widget build(BuildContext context) {
    final querySize = MediaQuery.of(context).size;

    return SizedBox(
      height: querySize.height * 0.36,
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            "assets/images/garage.jpg",
            height: querySize.height * 0.25,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: querySize.height * 0.13,
            left: querySize.width * 0.08,
            child: Image.asset(
              "assets/images/volkswagen_rotated.png",
              height: querySize.height * 0.25,
            ),
          ),
          Positioned(
            top: querySize.height * 0.03,
            left: querySize.width * 0.04,
            child: Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_outlined),
                    color: Colors.white,
                    onPressed: () => GoRouter.of(context).pop(),
                  ),
                ),
                const SizedBox(width: 8),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tata Nexon EV 2024",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20)),
                    Row(
                      children: [
                        Icon(Icons.battery_6_bar_outlined, color: Colors.grey),
                        Text('93 % ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey)),
                        Icon(Icons.speed_outlined, color: Colors.grey),
                        Text(
                          '112 KM ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: querySize.height * 0.03,
            right: querySize.width * 0.08,
            child: const Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
