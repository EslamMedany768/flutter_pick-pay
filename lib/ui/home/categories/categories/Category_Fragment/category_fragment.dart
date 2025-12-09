import 'package:flutter/material.dart';
import 'package:news_app/model/categoryModel.dart';

import 'categoryCard.dart';

class CategoryFragment extends StatelessWidget {
  Function onCardClicked;
  CategoryFragment({super.key,required this.onCardClicked});

  static var categoryList = CategoryModel.createCategoryList();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              onCardClicked(categoryList[index].id);
            },
            child: CategoryCard(category: categoryList[index],index: index,));
        },
      ),
    );
  }

}
