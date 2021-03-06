import 'package:flutter/material.dart';
import 'package:help_rem/widgets/blue_button.dart';
import 'package:help_rem/widgets/blue_text_field.dart';
import 'package:help_rem/widgets/blue_text_field_multiline.dart';

class PhysicalActivityCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            iconSize: 30,
            icon: Icon(Icons.arrow_back, color: Color(0xff4B98B5)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "Criando Atividade Física",
            style: TextStyle(
              color: Color(0xff4B98B5),
              fontSize: 30,
            ),
          ),
        ),
        body: PhysicalActivityCreateBox(),
      ),
    );
  }
}

class PhysicalActivityCreateBox extends StatelessWidget {
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
                  BlueTextField(onChange: () {}, text: "Nome"),
                  SizedBox(height: 8),
                  BlueTextField(onChange: () {}, text: "Horario"),
                  SizedBox(height: 8),
                  BlueTextFieldMultiline(onChange: () {}, text: "Descrição"),
                  SizedBox(height: 8),
                  BlueButton("Criar Atividade", () {})
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
