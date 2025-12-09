import 'package:flutter/material.dart';

import '../../../../utils/AppColors.dart';
import '../../../../utils/AppStyles.dart';

class ThemeOrLangWidget extends StatelessWidget {
  IconData icon;
  String title;
  String titleSec;

  ThemeOrLangWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.titleSec,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, color: AppColors.white),
            SizedBox(width: 12),
            Text(title, style: AppStyles.bold16white.copyWith(fontSize: 20)),
          ],
        ),
        SizedBox(height: 8),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 13),
          height: height * 0.065,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            border: Border.all(color: AppColors.white),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(titleSec, style: AppStyles.bold16white),
              Icon(Icons.arrow_drop_down, color: AppColors.white),
            ],
          ),
        ),
      ],
    );
  }
}
