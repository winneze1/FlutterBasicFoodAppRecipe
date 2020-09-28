import 'package:flutter/material.dart';
import 'package:foodapp/Constants.dart';
import 'package:foodapp/models/Category.dart';

import 'foods_page.dart';

class CategoryItem extends StatelessWidget {
  Category category;
  CategoryItem({this.category});

  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;

    return InkWell(
      onTap: () {
        //print('test ${this.category.content}');
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => FoodsPage(
        //       category: this.category,
        //     ),
        //   ),
        // );
        //use Routename
        Navigator.pushNamed(context, FoodsPage.routeName,
            arguments: {'category': category});
      },
      splashColor: Colors.grey,
      child: Container(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                this.category.content,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: Indie_Flower),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: _color,
            gradient: LinearGradient(
              colors: [
                _color.withOpacity(0.8),
                _color,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
