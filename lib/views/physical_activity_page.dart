import 'package:flutter/material.dart';
import 'package:help_rem/provider/physical_activityprovider.dart';
import 'package:help_rem/widgets/physical_activity_card.dart';
import 'package:provider/provider.dart';

class PhysicalActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PhysicalProvider activity = Provider.of(context);
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
                  Navigator.of(context).pushNamed('/physical_activity_create'),
              icon: Icon(Icons.add, size: 40, color: Color(0xff4B98B5)))
        ],
        title: Text(
          "Atividades Fisicas",
          style: TextStyle(
            color: Color(0xff4B98B5),
            fontSize: 30,
          ),
        ),
      ),
     body: Container(
          color: Color(0xffE1E1E1),
          child: ListView.builder(
              itemCount: activity.count,
              itemBuilder: (ctx, i) => PhysicalActivityCard(activity.byIndex(i)))),
    );
  }
}
