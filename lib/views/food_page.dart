import 'package:flutter/material.dart';
import 'package:help_rem/provider/foodprovider.dart';
import 'package:help_rem/widgets/food_card.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FoodProvider food = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          iconSize: 30,
          icon: Icon(Icons.arrow_back, color: Color(0xff4B98B5)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).pushNamed('/create_food'),
              icon: Icon(Icons.add, size: 40, color: Color(0xff4B98B5)))
        ],
        title: Text(
          "Alimentação",
          style: TextStyle(
            color: Color(0xff4B98B5),
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
          color: Color(0xffE1E1E1),
          child: ListView.builder(
              itemCount: food.count,
              itemBuilder: (ctx, i) => FoodCard(food.byIndex(i)))),
    );
  }
}
