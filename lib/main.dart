import 'package:flutter/material.dart';
import 'package:habitats_24_mobile/constants/strings.dart';
import 'package:habitats_24_mobile/services/route_service%20copy.dart';
import 'package:habitats_24_mobile/styles/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: appTheme(textTheme: textTheme),
      initialRoute: RouteService.navigationMenu,
      onGenerateRoute: RouteService.getRoute,
    );
  }
}
