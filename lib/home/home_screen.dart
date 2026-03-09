import 'package:flutter/material.dart';
import 'package:space_apps/core/app_strings.dart';
import 'package:space_apps/home/widget/header_widget.dart';

import '../core/app_assets.dart';
import '../core/app_colors.dart';
import '../model/planet.dart';
import '../planets_details/planet_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = 'Home screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController(initialPage: 0);
  int selectedIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    pageController.addListener(() {
      if (pageController.page! % 1 == 0) {
        selectedIndex = pageController.page!.toInt();
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            HeaderWidget(),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                //itemCount: Planet.planets.length,
                itemBuilder: (Context, index) {
                  return Image.asset(Planet.planets[index % 9].imagePath);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilledButton(
                  onPressed: () {
                    pageController.animateToPage(
                      selectedIndex - 1,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.red,
                    foregroundColor: AppColors.white,
                    shape: CircleBorder(),
                  ),
                  child: Icon(Icons.arrow_back),
                ),
                Text(
                  Planet.planets[selectedIndex % 9].name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                ),

                FilledButton(
                  onPressed: () {
                    pageController.animateToPage(
                      selectedIndex + 1,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.red,
                    foregroundColor: AppColors.white,
                    shape: CircleBorder(),
                  ),
                  child: Icon(Icons.arrow_forward),
                ),
              ],
            ),
            SizedBox(height: 16),
            FilledButton(
              onPressed: () {
                Navigator.of(context).pushNamed(PlanetDetailsScreen.routeName);
              },
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.red,
                padding: EdgeInsets.all(16),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(
                    "${AppStrings.explore} ${Planet.planets[selectedIndex % 9].name}",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  Icon(Icons.arrow_forward, size: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
