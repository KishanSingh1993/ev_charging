import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../home_page/Presentation/screnns/my_car_infos.dart';
import '../../navigation_bar.dart';

class EvChargingGoRouter {
  static GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const NavigationScreen(),
      ),
      GoRoute(
        path: '/myCarInfo',
        builder: (BuildContext context, GoRouterState state) =>
            const MyCarInfo(),
      ),
    ],
  );
}
