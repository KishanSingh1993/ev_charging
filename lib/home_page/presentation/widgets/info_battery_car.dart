import 'package:flutter/material.dart';

class InfoBatteryCar extends StatelessWidget {
  const InfoBatteryCar({super.key});

  @override
  Widget build(BuildContext context) {
    final querySize = MediaQuery.of(context).size;

    return SizedBox(
      width: querySize.width * 0.5,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Battery",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25)),
              const Text("Last charged 1w ago",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 14)),
              Center(
                child: Text("82%",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: querySize.width * 0.15)),
              ),
              const Divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("Distance\nRemaining",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                          fontSize: 14)),
                  const SizedBox(width: 4),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '231',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: querySize.width * 0.07,
                          ),
                        ),
                        const TextSpan(
                            text: 'Km', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '55 ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: querySize.width * 0.07),
                        ),
                        const TextSpan(
                            text: 'kWh',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 16)),
                      ],
                    ),
                  ),
                  const Text("Battery\nCapacity",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                          fontSize: 14)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
