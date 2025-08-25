import 'package:flutter/material.dart';
import 'package:magnet_x_dao/routesDir/view_routes.dart';
import 'package:magnet_x_dao/screens/home_screen.dart';
import 'package:magnet_x_dao/screens/duo_task_screen.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ViewRoutes.duoScreen:
        return MaterialPageRoute(
            builder: (_) => const DuoTaskScreen(), settings: settings);

      case ViewRoutes.home:
        return MaterialPageRoute(
            builder: (_) => const HomeScreen(), settings: settings);

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No Route define for ${settings.name}'),
                  ),
                ));
    }
  }
}
