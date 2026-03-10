import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space_apps/core/app_assets.dart';
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
          children: [PlanetHeaderWidget(name: planet.name, title: planet.title),
          Expanded(
            child: ListView(
              children:[
                AspectRatio(aspectRatio: 1,
                child:
            Flutter3DViewer(
            controller: controller,
                src: '${AppAssets.modelRootPath}${planet.model}'),
                )
                     ] ),
          )
          ],
        ),
      ),
    );
  }
}