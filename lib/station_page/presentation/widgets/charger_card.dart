import 'package:flutter/material.dart';

class ChargerCard extends StatelessWidget {
  const ChargerCard(
      {super.key,
      required this.chargerImageUrl,
      required this.chargerNumber,
      required this.chargerName,
      required this.chargerPower});

  final String chargerImageUrl;
  final String chargerName;
  final String chargerNumber;
  final String chargerPower;

  @override
  Widget build(BuildContext context) {
    final querySize = MediaQuery.of(context).size;

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Column(
          children: [
            Image.asset(
              chargerImageUrl,
              height: querySize.height * 0.15,
              width: querySize.width * 0.27,
            ),
            Row(
              children: [
                Text(
                  chargerNumber,
                  style: TextStyle(
                      color: int.parse(chargerNumber) == 0
                          ? Colors.red
                          : Colors.blue,
                      fontSize: 40,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      chargerName,
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(chargerPower),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
