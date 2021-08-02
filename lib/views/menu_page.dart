import 'package:flutter/material.dart';
import 'package:help_rem/widgets/menu_button.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Menu Principal",
            style: TextStyle(
              color: Color(0xff4B98B5),
              fontSize: 30,
            ),
          ),
        ),
        body: MenuPageBox(),
      ),
    );
  }
}

class MenuPageBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xffE1E1E1),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text("Bem vindo", style: TextStyle(fontSize: 30),),
                  MenuButton(
                    onClick: () {},
                    text: "Entes Queridoss",
                    icon: Icons.group,
                  ),
                  SizedBox(height: 6),
                  MenuButton(
                    onClick: () {},
                    text: "Remedios",
                    icon: Icons.medical_services,          
                  ),
                  SizedBox(height: 6),
                  MenuButton(
                    onClick: () {},
                    text: "Atividades Físicas",
                    icon: Icons.directions_bike,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
