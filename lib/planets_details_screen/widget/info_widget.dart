import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class InfoWidget extends StatelessWidget {
   InfoWidget({super.key, required this.title, required this.value});
String title;
  String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
         '$title$value'
             ,style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColors.white,
        ),
        )
        ,SizedBox(height: 8),
      ],
    );
  }
}
