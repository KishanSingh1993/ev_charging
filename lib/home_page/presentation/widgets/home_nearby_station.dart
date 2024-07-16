import 'package:flutter/material.dart';

import 'nearby_station_card.dart';

class HomeNearbyStation extends StatelessWidget {
  const HomeNearbyStation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Nearby Charging Stations",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "View all",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          const NearbyStationCard(
            adress: 'socrate, Casablanca, Morocco',
            distance: '623',
            rating: '4.9',
            stationImageUrl: 'assets/images/station_1.png',
          ),
          const NearbyStationCard(
            adress: '2 Mars, Casablanca, Morocco',
            distance: '430',
            rating: '4.7',
            stationImageUrl: 'assets/images/station_2.jpg',
          ),
          const NearbyStationCard(
            adress: 'Zerktouni, Casablanca, Morocco',
            distance: '520',
            rating: '4.9',
            stationImageUrl: 'assets/images/station_3.jpg',
          ),
        ],
      ),
    );
  }
}
