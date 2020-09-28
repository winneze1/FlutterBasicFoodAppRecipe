import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodapp/fakedate.dart';
import 'category_item.dart';

class CategoriesPage extends StatelessWidget {
  static const String routeName = '/CategoriesPage';
  const CategoriesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(12),
      children: FAKE_CATEGORIES
          .map((eachCategory) => CategoryItem(
                category: eachCategory,
              ))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
