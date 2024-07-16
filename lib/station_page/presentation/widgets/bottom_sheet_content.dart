import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import '../../../utils/constants/stations_constants.dart';
import 'charger_card.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key, required this.myCarLocation});

  final LatLng myCarLocation;

  @override
  Widget build(BuildContext context) {

    final querySize = MediaQuery.of(context).size;

    return InkWell(
      onTap: () => showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
              child: SizedBox(
                height: 450,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        height: 5,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                    ),
                    SizedBox(height: querySize.height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          StationsConstants.stationsInfo[0]["chargerName"],
                          style: const TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w700),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.blue),
                            Text(
                              StationsConstants.stationsInfo[0]["rating"],
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(
                      StationsConstants.stationsInfo[0]["stationAddress"],
                      textAlign: TextAlign.start,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Distance: ',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          TextSpan(
                            text: StationsConstants.stationsInfo[0]["distance"],
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            // Style the text
                          ),
                          icon: const Icon(
                            Icons.location_searching_outlined,
                            color: Colors.white,
                          ),
                          label: const Text(
                            "Take Detour",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                    SizedBox(height: querySize.height * 0.01),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            //backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(50), // Adjust as needed
                              side: const BorderSide(
                                color: Colors.blue,
                                width: 1.5,
                              ), // Adjust width
                            ),
                          ),
                          child: const Text(
                            "Add to favorites",
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          )),
                    ),
                    SizedBox(height: querySize.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ChargerCard(
                            chargerImageUrl: StationsConstants.stationsInfo[0]
                                ["firstChargerImage"],
                            chargerNumber: StationsConstants.stationsInfo[0]
                                ["firstChargerNumber"],
                            chargerName: StationsConstants.stationsInfo[0]
                                ["firstChargerName"],
                            chargerPower: StationsConstants.stationsInfo[0]
                                ["firstChargerPower"],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: Colors.blue, // Change color as needed
                                width: 2.0, // Change width as needed
                              ),
                            ),
                            child: ChargerCard(
                              chargerImageUrl: StationsConstants.stationsInfo[0]
                                  ["secondChargerImage"],
                              chargerNumber: StationsConstants.stationsInfo[0]
                                  ["secondChargerNumber"],
                              chargerName: StationsConstants.stationsInfo[0]
                                  ["secondChargerName"],
                              chargerPower: StationsConstants.stationsInfo[0]
                                  ["secondChargerPower"],
                            ),
                          ),
                        ),
                        Expanded(
                          child: ChargerCard(
                            chargerImageUrl: StationsConstants.stationsInfo[0]
                                ["thirdChargerImage"],
                            chargerNumber: StationsConstants.stationsInfo[0]
                                ["thirdChargerNumber"],
                            chargerName: StationsConstants.stationsInfo[0]
                                ["thirdChargerName"],
                            chargerPower: StationsConstants.stationsInfo[0]
                                ["thirdChargerPower"],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Visibility(
            visible: myCarLocation == const LatLng(33.593044, -7.648694)
                ? false
                : true,
            child: Container(
              // height: 100,
              // width: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black.withOpacity(0.7)),
            ),
          ),
          myCarLocation == const LatLng(33.593044, -7.648694)
              ? Image.asset("assets/images/my_car.png")
              : const Icon(
                  Icons.electric_car,
                  size: 30,
                  color: Colors.blue,
                ),
        ],
      ),
    );
  }
}
