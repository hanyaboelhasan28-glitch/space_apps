import 'package:flutter/material.dart';
import 'package:space_apps/core/app_strings.dart';
import 'package:space_apps/home/widget/header_widget.dart';

import '../core/app_assets.dart';
import '../core/app_colors.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
static const String routeName = 'Home screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(),

        ],
      ),
    );
  }
}
