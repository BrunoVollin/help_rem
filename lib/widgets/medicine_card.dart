import 'dart:io';

import 'package:flutter/material.dart';
import 'package:help_rem/models/Remedio.dart';
import 'package:image_picker/image_picker.dart';

class MedicineCard extends StatelessWidget {
  final Remedio medicine;

  const MedicineCard(this.medicine);

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
                    Container(
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.file(
                          File(medicine.imagem!.path),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      medicine.nome,
                      style: TextStyle(color: Color(0xFF4B98B5), fontSize: 30),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text("Horario: ${medicine.horario}",
                            style: TextStyle(fontSize: 20)),
                        Text("Quantidade: ${medicine.quantidade}",
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