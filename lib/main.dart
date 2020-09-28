import 'package:flutter/material.dart';
import 'package:foodapp/Constants.dart';
import 'package:foodapp/categories_page.dart';
import 'package:foodapp/foods_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food app',
      initialRoute: "/",
      routes: {
        '/FoodsPage': (context) => FoodsPage(),
        '/CategoriesPage': (context) => CategoriesPage()
      },
      theme: ThemeData(
        primaryColor: Colors.cyan,
        fontFamily: Permanent_Marker,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Food\'s categories'),
        ),
        body: CategoriesPage(),
      ),
    );
  }
}
