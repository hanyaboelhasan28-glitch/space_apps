import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space_apps/core/app_assets.dart';
import 'package:space_apps/core/app_strings.dart';
import 'package:space_apps/planets_details_screen/widget/info_widget.dart';
import '../core/app_colors.dart';
import '../model/planet.dart';

import '../planets_details_screen/widget/planet_header_widget.dart'
    show PlanetHeaderWidget;

class PlanetDetailsScreen extends StatefulWidget {
  const PlanetDetailsScreen({super.key});

  static const String routeName = 'planet details screen';

  @override
  State<PlanetDetailsScreen> createState() => _PlanetDetailsScreenState();
}

class _PlanetDetailsScreenState extends State<PlanetDetailsScreen> {
  Flutter3DController controller = Flutter3DController();

  @override
  Widget build(BuildContext context) {
    Planet planet = ModalRoute.of(context)!.settings.arguments as Planet;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black,

        body: Column(
          children: [
            PlanetHeaderWidget(name: planet.name, title: planet.title),
            Expanded(
              child: ListView(
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Flutter3DViewer(
                      controller: controller,
                      src: '${AppAssets.modelRootPath}${planet.model}',
                    ),
                  ),
                  Text(
                    AppStrings.about,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    planet.about,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  InfoWidget(
                    title: AppStrings.distanceFromSun,
                    value: planet.distanceFromSun,
                  ),
                  InfoWidget(
                    title: AppStrings.length0fDay,
                    value: planet.length0FDay,
                  ),
                  InfoWidget(
                    title: AppStrings.orbitalPeriod,
                    value: planet.orbitPeriod,
                  ),
                  InfoWidget(
                    title: AppStrings.radius,
                    value: planet.radius,
                  ),
                  InfoWidget(
                    title: AppStrings.mass,
                    value: planet.mass,
                  ),
                  InfoWidget(
                    title: AppStrings.gravity,
                    value: planet.gravity,
                  ),
                  InfoWidget(
                    title: AppStrings.surfaceArea,
                    value: planet.surfaceArea,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
