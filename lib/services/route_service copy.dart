import 'package:flutter/material.dart';
import 'package:habitats_24_mobile/app/home/home_view/home_view.dart';
import 'package:habitats_24_mobile/app/navigation%20bar/views/navigation_view.dart';
import 'package:habitats_24_mobile/app/settings/settings_view/settings_view.dart';

class RouteService {
  static const String homeView = '/home';
  static const String settingsView = '/settings';
  static const String navigationMenu = '/naviagtion';

  static Route? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeView:
        return MaterialPageRoute(builder: (context) => const HomeView());
      case settingsView:
        return MaterialPageRoute(builder: (context) => const SettingsView());
      case navigationMenu:
        return MaterialPageRoute(builder: (context) => NavigationMenu());

      default:
        return null;
    }
  }
}
