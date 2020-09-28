import 'package:flutter/material.dart';
import 'package:foodapp/models/food.dart';

// ignore: must_be_immutable
class DetailFoodPage extends StatelessWidget {
  Food food;
  DetailFoodPage({this.food});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${this.food.name}',
        ),
      ),
      body: Column(
        children: [
          Center(
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/loading.gif',
              image: food.urlImage,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text('Ingredients',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Expanded(
              child: Center(
            child: this.food.ingredients.length > 0
                ? ListView.builder(
                    itemCount: this.food.ingredients.length,
                    itemBuilder: (content, index) {
                      String ingredient = this.food.ingredients[index];
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text(
                            '*${index + 1}',
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        title: Text(
                          ingredient,
                          style: TextStyle(fontSize: 20),
                        ),
                      );
                    })
                : Text(
                    'No food found',
                    style: TextStyle(fontSize: 25),
                  ),
          ))
        ],
      ),
    );
  }
}
