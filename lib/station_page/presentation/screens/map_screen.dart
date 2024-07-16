import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:open_route_service/open_route_service.dart';
import '../../../utils/constants/stations_constants.dart';
import '../widgets/bottom_sheet_content.dart';

class MapStationsPage extends StatefulWidget {
  const MapStationsPage({super.key});

  @override
  State<MapStationsPage> createState() => _MapStationsPageState();
}

class _MapStationsPageState extends State<MapStationsPage> {
  final MapController mapController = MapController();

  // Normally, the following variables (stationsMarkers, routePoints) and
  // the function drawRoute() should not be in the UI code but rather in
  // the domain or business logic. For instance, if you use Bloc, the variables
  // should be in the state class, and the function should be in the Bloc class.

  final List<Marker> stationsMarkers = [];
  List<LatLng> routePoints = [];

  drawRoute() async {
    final OpenRouteService client = OpenRouteService(

        // Go to Open Route Service at https://openrouteservice.org/,
        // create an account, and get your API key. In the upcoming articles,
        // I will discuss Open Route Service in detail.
        apiKey: 'Your_API_Key');

    for (LatLng stationGeoPoint in StationsConstants.stationsGeoPoints) {
      stationsMarkers.add(
        Marker(
          width: 60.0,
          height: 60.0,
          point: stationGeoPoint,
          child: BottomSheetContent(myCarLocation: stationGeoPoint),
        ),
      );
    }

    // Form Route between coordinates
    final List<ORSCoordinate> routeCoordinates =
        await client.directionsRouteCoordsGet(
      startCoordinate:
          const ORSCoordinate(latitude: 33.593044, longitude: -7.648694),
      endCoordinate:
          const ORSCoordinate(latitude: 33.585771, longitude: -7.645132),
    );

   setState(() {
     routePoints = routeCoordinates
         .map((coordinate) => LatLng(coordinate.latitude, coordinate.longitude))
         .toList();
   });

  }

  @override
  void initState() {
    drawRoute();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        mapController: mapController,
        options: MapOptions(
          initialCenter: const LatLng(33.583760, -7.648748),
          initialZoom: 15,
          onTap: ((tapPosition, point) {
            // locationBloc.add(DestinationLocationChanged(destinationPosition: point));
          }),
        ),
        children: [
          TileLayer(
            urlTemplate:
                'https://{s}.google.com/vt/lyrs=m,h&x={x}&y={y}&z={z}&hl=ar-MA&gl=MA',
            subdomains: const ['mt0', 'mt1', 'mt2', 'mt3'],
            userAgentPackageName: 'com.example.app',
          ),
          const RichAttributionWidget(
            attributions: [
              TextSourceAttribution(
                'OpenStreetMap contributors',
                // onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
              ),
            ],
          ),
          MarkerLayer(
            markers: stationsMarkers,
          ),
          PolylineLayer(
            polylines: [
              Polyline(
                points: routePoints,
                strokeWidth: 4,
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
