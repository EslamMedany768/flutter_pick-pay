import 'package:flutter/material.dart';
import 'package:news_app/ui/home/HomeScreen.dart';
import 'package:news_app/ui/home/drawer/widget/ThemeAndLangWidget.dart';
import 'package:news_app/utils/AppColors.dart';
import 'package:news_app/utils/AppStyles.dart';

class CustomDrawer extends StatelessWidget {
  Function onHomeButtonClicked;
   CustomDrawer({super.key,required this.onHomeButtonClicked});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.684,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: AppColors.white,
            height: height * 0.194,
            width: double.infinity,
            child: Text(
              "News App",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              color: AppColors.black,
              child: Column(
                children: [
                  //todo: homeButton
                  InkWell(
                    onTap: () {
                      onHomeButtonClicked();
                      // Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.home_outlined, color: AppColors.white),
                        SizedBox(width: width * 0.03),
                        Text(
                          "Go To Home",
                          style: AppStyles.bold16white.copyWith(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Divider(),
                  SizedBox(height: 24),
                  ThemeOrLangWidget(
                    icon: Icons.format_paint_outlined,
                    title: "Theme",
                    titleSec: "Dark",
                  ),
                  SizedBox(height: 24),
                  ThemeOrLangWidget(
                    icon: Icons.language,
                    title: "Language",
                    titleSec: "English",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
