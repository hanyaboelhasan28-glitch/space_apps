import 'package:flutter/material.dart';

import '../../core/app_assets.dart';
import '../../core/app_colors.dart';
import '../../core/app_strings.dart';

class PlanetHeaderWidget extends StatelessWidget {
  PlanetHeaderWidget({super.key, required this.name, required this.title});

  String name;
  String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          child: Image.asset(
            AppAssets.halfMoon,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  AppColors.black.withValues(alpha: 0.5),
                  AppColors.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(

                children: [

                  FilledButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: AppColors.red,
                      foregroundColor: AppColors.white,
                      shape: CircleBorder(),
                    ),
                    child: Row(children: [Icon(Icons.arrow_back)]),
                  ),
                  Column(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                        ),
                      ),

                      Row(
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
