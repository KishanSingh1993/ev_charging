import 'dart:async';
import 'package:ev_charging_app/station_page/presentation/screens/map_screen.dart';
import 'package:flutter/material.dart';

import 'home_page/presentation/screnns/home_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  // TODO: manage using bloc the state of selected index

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  late StreamSubscription _intentSub;

  @override
  void dispose() {
    _intentSub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final widgetOptions = [
      const HomeScreen(),
      const MapStationsPage(),
      const HomeScreen(),
    ];

    return Scaffold(
      body: widgetOptions[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'MyCar',
            selectedIcon: Icon(
              Icons.home,
              //color: Colors.purple,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.map_outlined),
            label: 'Stations',
            selectedIcon: Icon(
              Icons.map,
              //color: Colors.purple,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outlined),
            label: 'Settings',
            selectedIcon: Icon(
              Icons.person,
              //color: Colors.purple,
            ),
          ),
        ],
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
      ),
    );
  }
}
