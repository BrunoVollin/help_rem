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
                  Container(
                    width: 200,
                    height: 100,
                    child: Image.asset("assets/logo.jpg"),
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
                    route: '/medicine_page',
                    text: "Remedios",
                    icon: Icons.medical_services,
                  ),
                  SizedBox(height: 6),
                  MenuButton(
                    route: '/physical_activity_page',
                    text: "Atividades Físicas",
                    icon: Icons.directions_bike,
                  ),
                  SizedBox(height: 6),
                  MenuButton(
                    route: '/food_page',
                    text: "Alimentos",
                    icon: Icons.restaurant,
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
