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
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Bem Vindo",
                      style: TextStyle(fontSize: 30, color: Colors.black54),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Aperte a opção que deseja.",
                      style: TextStyle(fontSize: 23, color: Colors.black54),
                    ),
                  ),
                  MenuButton(
                    route: '/dear_one_list',
                    text: "Entes Queridos",
                    icon: Icons.group,
                  ),
                  SizedBox(height: 6),
                  MenuButton(
                    route: '',
                    text: "Remedios",
                    icon: Icons.medical_services,
                  ),
                  SizedBox(height: 6),
                  MenuButton(
                    route: '',
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
