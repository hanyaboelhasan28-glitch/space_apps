import 'package:flutter/material.dart';
import 'package:space_apps/core/app_strings.dart';
import 'package:space_apps/home/widget/header_widget.dart';

import '../core/app_assets.dart';
import '../core/app_colors.dart';
import '../model/planet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = 'Home screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: Column(
          children: [
            HeaderWidget(),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: Planet.planets.length,
                itemBuilder: (Context, index) {
                  return Image.asset(Planet.planets[index].imagePath);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
