import 'package:flutter/material.dart';

class MedicineCard extends StatelessWidget {
  String image =
      'https://img.drogaraia.com.br/catalog/product/3/7/37638.jpg?width=520&height=520&quality=50&type=resize';

  String name = "Doralgina";
  String time = " Todo dia 13h";
  String amount = "1 comprimido";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Container(
          child: Padding(
            // padding: const EdgeInsets.all(10.0),
            padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(image),
                      radius: 70,
                    ),
                    Text(
                      name,
                      style: TextStyle(color: Color(0xFF4B98B5), fontSize: 30),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text("Horario: $time", style: TextStyle(fontSize: 20)),
                        Text("Quantidade: $amount",
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
