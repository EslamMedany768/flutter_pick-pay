import 'package:flutter/material.dart';
import 'package:news_app/model/sourcesRespone.dart';
import 'package:news_app/utils/AppStyles.dart';
import 'package:news_app/utils/AppTheme.dart';

class TabNameWidget extends StatelessWidget {
  bool isSelected;
  Sources sources;

  TabNameWidget({super.key, required this.sources, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      "${sources.name}",
      style: isSelected == true
          ? Theme.of(context).textTheme.titleLarge
          : Theme.of(context).textTheme.titleSmall,
    );
  }
}
