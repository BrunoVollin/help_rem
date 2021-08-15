import 'dart:io';

import 'package:flutter/material.dart';
import 'package:help_rem/models/Atividade.dart';

class PhysicalActivityCard extends StatelessWidget {
  final Atividade activity;

  const PhysicalActivityCard(this.activity);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/physical_specific');
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
                    Container(
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.file(
                          File(activity.imagem!.path),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      activity.nome,
                      style: TextStyle(color: Color(0xFF4B98B5), fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Horário: ${activity.horario}",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      width: 300,
                      child: Text(
                        "Descrição: ${activity.descricao}",
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
