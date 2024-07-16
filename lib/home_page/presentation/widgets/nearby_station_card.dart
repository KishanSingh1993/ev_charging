import 'package:flutter/material.dart';

class NearbyStationCard extends StatelessWidget {
  const NearbyStationCard({
    super.key,
    required this.adress,
    required this.distance,
    required this.rating,
    required this.stationImageUrl,
  });

  final String adress;
  final String distance;
  final String rating;
  final String stationImageUrl;

  @override
  Widget build(BuildContext context) {

    final querySize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: querySize.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      adress,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    Text(
                      "Distance: $distance",
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.electric_bolt_outlined,
                          color: Colors.blue,
                          size: querySize.width * 0.04,
                        ),
                        const Text(
                          "CSS2 ",
                          style: TextStyle(color: Colors.blue),
                        ),
                        SizedBox(width: querySize.width * 0.01),
                        Icon(
                          Icons.star,
                          color: Colors.blue,
                          size: querySize.width * 0.04,
                        ),
                        Text(
                          rating,
                          style: const TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ClipRRect(
                child: Image.asset(
                  stationImageUrl,
                  width: querySize.width * 0.3,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
