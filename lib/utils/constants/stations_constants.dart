import 'package:latlong2/latlong.dart';

class StationsConstants {
  static List<LatLng> stationsGeoPoints = [
    const LatLng(33.583760, -7.648748),
    const LatLng(33.585771, -7.645132),
    const LatLng(33.583304, -7.644735),
    const LatLng(33.579926, -7.647128),
    const LatLng(33.579524, -7.642075),
    const LatLng(33.593044, -7.648694),
  ];

  static List<Map<String, dynamic>> stationsInfo = [
    {
      "chargerName": "BP Pulse",
      "rating": "4.3",
      "stationAddress": "sokrate, Casablanca, Morocco",
      "distance": "730m",
      "firstChargerImage": "assets/images/first_charger.png",
      "firstChargerName": "CCS1",
      "firstChargerPower": "350 kW",
      "firstChargerNumber": "2",
      "secondChargerImage": "assets/images/second_charger.png",
      "secondChargerName": "CCS2",
      "secondChargerPower": "360 kW",
      "secondChargerNumber": "3",
      "thirdChargerImage": "assets/images/third_charger.png",
      "thirdChargerName": "j1772",
      "thirdChargerPower": "19.2 kW",
      "thirdChargerNumber": "0",
    },
  ];
}