import 'package:flutter/material.dart';
import 'package:space_apps/home/home_screen.dart';
import 'package:space_apps/planets_details/planet_details_screen.dart';


import 'login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Space App",
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        PlanetDetailsScreen.routeName: (context) => PlanetDetailsScreen(),
      },
    );
  }
}
