import 'package:flutter/material.dart';
import 'package:help_rem/provider/medicineprovider.dart';
import 'package:help_rem/widgets/dear_card.dart';
import 'package:help_rem/widgets/medicine_card.dart';
import 'package:provider/provider.dart';

class MedicinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MedicineProvider medicine = Provider.of(context);
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
              onPressed: () =>
                  Navigator.of(context).pushNamed('/create_medicine'),
              icon: Icon(Icons.add, size: 40, color: Color(0xff4B98B5)))
        ],
        title: Text(
          "Remédios",
          style: TextStyle(
            color: Color(0xff4B98B5),
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        color: Color(0xffE1E1E1),
        child: ListView.builder(
            itemCount: medicine.count,
            itemBuilder: (ctx, i) => MedicineCard(medicine.byIndex(i))),
      ),
    );
  }
}
