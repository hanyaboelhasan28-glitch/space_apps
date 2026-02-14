import 'package:flutter/material.dart';
import 'package:space_apps/core/app_strings.dart';
import 'package:space_apps/home/home_screen.dart';

import '../core/app_assets.dart';
import '../core/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String routeName = 'login screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          Image.asset(
            AppAssets.splash,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: FittedBox(
                        child: Text(
                          AppStrings.exploreTheUniverse,
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    Spacer(flex: 1),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            left: 16,
            child: FilledButton(
              onPressed: () {
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.red,
                padding: EdgeInsets.all(16),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(
                    AppStrings.explore,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  Icon(Icons.arrow_forward, size: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
