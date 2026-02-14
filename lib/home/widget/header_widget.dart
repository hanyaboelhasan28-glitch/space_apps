import 'package:flutter/material.dart';
import 'package:space_apps/core/app_assets.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssets.halfMoon,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
         
      ],
    );
  }
}
