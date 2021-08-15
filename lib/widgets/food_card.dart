import 'dart:io';

import 'package:flutter/material.dart';
import 'package:help_rem/models/Alimento.dart';

class FoodCard extends StatelessWidget {
  final Alimento food;

  const FoodCard(this.food);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   // Navigator.of(context).pushNamed('/food_specific');
      // },
      child: Center(
        child: Container(
          child: Padding(
            // padding: const EdgeInsets.all(10.0),
            padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.file(
                          File(food.imagem!.path),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          food.nome,
                          style:
                              TextStyle(color: Color(0xFF4B98B5), fontSize: 30),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Pode: ${food.pode}",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
