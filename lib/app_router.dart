import 'package:flutter/cupertino.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings)
  print('Route: ${settings.name}');
  switch (settings.name) {
    case '/':
      return HomeScreen.route();
    case HomeScreen.routeName:
      return HomeScreen.route();
    case LocationScreen.routeName:
      return LocationScreen.route();
    case FilterScreen.routeName:
      return Filtescreen.route();

    default:
      return _errorRoute();
  }
}