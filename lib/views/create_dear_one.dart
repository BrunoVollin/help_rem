import 'package:flutter/material.dart';
import 'package:help_rem/widgets/blue_text_field.dart';
import 'package:help_rem/widgets/blue_text_field_multiline.dart';

class CreateDearOne extends StatelessWidget {
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
            "Usuario",
            style: TextStyle(
              color: Color(0xff4B98B5),
              fontSize: 30,
            ),
          ),
        ),
        body: CreateDearOneBox(),
      ),
    );
  }
}

class CreateDearOneBox extends StatelessWidget {
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
                  BlueTextField(onChange: () {}, text: "Senha"),
                  SizedBox(height: 8),
                  BlueTextField(onChange: () {}, text: "Endereço"),
                  SizedBox(height: 8),
                  BlueTextField(onChange: () {}, text: "Telefone"),
                  SizedBox(height: 8),
                  BlueTextFieldMultiline(
                      onChange: () {}, text: "Sobre a Pessoa"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
