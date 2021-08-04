import 'package:flutter/material.dart';

class PhysicalActivityCard extends StatelessWidget {
  String image =
      'https://www.action360.com.br/wp-content/uploads/2018/01/istock-589985118.jpg';

  String name = "Corrida";
  String time = "15:30h";
  String description =
      '''Donec blandit massa ac nisi faucibus, vitae malesuada libero malesuada.''';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/dear_one_specific');
      },
      child: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            // padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(image),
                      radius: 45,
                    ),
                    Text(
                      name,
                      style: TextStyle(color: Color(0xFF4B98B5), fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Horário: $time",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      width: 300,
                      child: Text(
                        "Descrição: $description",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
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
