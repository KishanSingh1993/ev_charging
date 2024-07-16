import 'package:flutter/material.dart';
import '../widgets/info_battery_car.dart';
import '../widgets/info_car.dart';
import '../widgets/info_car_date.dart';
import '../widgets/info_car_distance.dart';
import '../widgets/info_car_pressure.dart';

class MyCarInfo extends StatelessWidget {
  const MyCarInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final querySize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              const InfoCar(),
              SizedBox(
                //height: querySize.height * 0.4,
                width: querySize.width,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InfoBatteryCar(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InfoCarDistance(),
                          InfoCarDate(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const InfoCarPressure(),
              SizedBox(height: querySize.height * 0.07),
            ],
          ),
          Positioned(
            bottom: querySize.height * 0.01,
            child: Container(
              width: querySize.width,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue
                ),
                child: const Text("Switch Car",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
