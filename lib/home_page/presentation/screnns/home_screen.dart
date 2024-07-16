import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/home_car_card.dart';
import '../widgets/home_charging_station.dart';
import '../widgets/home_nearby_station.dart';
import '../widgets/home_search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue.shade50,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: HomeAppBar(),
      ),
      body: SizedBox(
        child: ListView(
          children: const [
            HomeSearchWidget(),
            HomeCarCard(),
            HomeChargingStation(),
            HomeNearbyStation(),
          ],
        ),
      ),
    );
  }
}
