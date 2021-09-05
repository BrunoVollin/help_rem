import 'package:flutter/material.dart';
import 'package:help_rem/data/dummy_entes.dart';
import 'package:help_rem/models/EntesQueridos.dart';
import 'package:help_rem/provider/entesprovider.dart';
import 'package:help_rem/widgets/dear_card.dart';
import 'package:provider/provider.dart';

class DearOneList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final EntesProvider entes = Provider.of(context);

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
              onPressed: () => {
                    Navigator.of(context).pushNamed('/create_dear_one'),
                  },
              icon: Icon(Icons.add, size: 40, color: Color(0xff4B98B5)))
        ],
        title: Text(
          "Entes Queridos",
          style: TextStyle(
            color: Color(0xff4B98B5),
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        color: Color(0xffE1E1E1),
        child: ListView.builder(
            itemCount: entes.count,
            itemBuilder: (ctx, i) => DearCard(entes.byIndex(i))),
      ),
    );
  }
}
