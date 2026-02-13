import 'package:flutter/material.dart';

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
        ),
      ],
    ),
    );
  }
}
