import 'package:flutter/material.dart';
import 'package:help_rem/models/EntesQueridos.dart';

class DearCard extends StatelessWidget {
  final EntesQueridos ente;

  const DearCard(this.ente);

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
                      backgroundImage: NetworkImage(ente.imagem),
                      radius: 45,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          ente.nome,
                          style:
                              TextStyle(color: Color(0xFF4B98B5), fontSize: 30),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Parentesco: ${ente.parentesco}",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("Idade: ${ente.idade}", style: TextStyle(fontSize: 20)),
                        Text("Telefone: ${ente.telefone}",
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
