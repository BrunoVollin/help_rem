import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  String image = 'encurtador.com.br/fgRS2';
  String cardTitle = "Brocolis";
  String pode = 'Sim';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/food_specific');
      },
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
                    CircleAvatar(
                      backgroundImage: NetworkImage(image),
                      radius: 45,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          cardTitle,
                          style:
                              TextStyle(color: Color(0xFF4B98B5), fontSize: 30),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Nome: $cardTitle",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("Pode: $pode", style: TextStyle(fontSize: 20)),
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
