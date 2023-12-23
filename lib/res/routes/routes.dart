import 'package:flutter/material.dart';
import 'package:money_divider/res/routes/routes_names.dart';
import 'package:money_divider/views/home_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Splash Screen
      case RoutesName.homeScreen:
        return PageRouteBuilder(
          settings:
              settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
          pageBuilder: (_, __, ___) => HomeScreen(),
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        );

      // Default Screen
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        }); // MaterialPageRoute
    }
  }
}
