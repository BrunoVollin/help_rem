import 'package:flutter/material.dart';
import 'package:help_rem/models/Atividade.dart';
import 'package:help_rem/provider/physical_activityprovider.dart';
import 'package:help_rem/widgets/blue_button.dart';
import 'package:help_rem/widgets/blue_text_field.dart';
import 'package:help_rem/widgets/blue_text_field_multiline.dart';
import 'package:provider/provider.dart';

class CreatePhysicalActivity extends StatelessWidget {
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
        body: CreatePhysicalBox(),
      ),
    );
  }
}

class CreatePhysicalBox extends StatefulWidget {
  @override
  _CreatePhysicalBoxState createState() => _CreatePhysicalBoxState();
}

class _CreatePhysicalBoxState extends State<CreatePhysicalBox> {
  late Atividade activity;

  String name = "";
  String descrition = "";

  createPhysicalActivity(context) {
  Provider.of<PhysicalProvider>(context, listen: false).put(
    Atividade(id: '1', nome: 'name', descricao: 'descrition'),
  );

  Navigator.of(context).pop();
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

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
