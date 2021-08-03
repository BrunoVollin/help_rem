import 'package:flutter/material.dart';

class DearCard extends StatelessWidget {
  String image =
      'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg';

  String cardTitle = "Bruce Man";
  String parentesco = "Primo";
  String idade = "35 anos";
  String telefone = "3412789234";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/dear_one_specific');
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
                          "Parentesco: $parentesco",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("Idade: $idade", style: TextStyle(fontSize: 20)),
                        Text("Telefone: $telefone",
                            style: TextStyle(fontSize: 20)),
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
