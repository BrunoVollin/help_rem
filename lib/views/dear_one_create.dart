import 'dart:io';

import 'package:flutter/material.dart';
import 'package:help_rem/models/EntesQueridos.dart';
import 'package:help_rem/provider/entesprovider.dart';
import 'package:help_rem/widgets/blue_button.dart';
import 'package:help_rem/widgets/blue_text_field.dart';
import 'package:help_rem/widgets/blue_text_field_multiline.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

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
            "Criando Ente Querido",
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

class CreateDearOneBox extends StatefulWidget {
  @override
  _CreateDearOneBoxState createState() => _CreateDearOneBoxState();
}

class _CreateDearOneBoxState extends State<CreateDearOneBox> {
  late EntesQueridos ente;

  String name = "";
  String phone = "";
  String kinship = "";
  String about = "";
  String age = "0";

  XFile? image;

  void getImageGalery() async {
    final picker = ImagePicker();

    try {
      // ignore: deprecated_member_use
      XFile? file = await picker.pickImage(source: ImageSource.gallery);
      if (file != null) {
        setState(() => image = file);
        print("aqui");
      }
  
    } catch (e) {
      print(e);
    }
  }

  createLovedOne(context) {
    Provider.of<EntesProvider>(context, listen: false).put(
      EntesQueridos(
          id: '3',
          parentesco: kinship,
          nome: name,
          idade: age,
          telefone: phone,
          imagem: image),
    );

    Navigator.of(context).pop();
  }

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
                  BlueTextField(
                      onChange: (info) {
                        name = info;
                      },
                      text: "Nome"),
                  SizedBox(height: 8),
                  BlueTextField(
                      onChange: (info) {
                        kinship = info;
                      },
                      text: "Parentesco"),
                  SizedBox(height: 8),
                  BlueTextField(
                      onChange: (info) {
                        phone = info;
                      },
                      text: "Telefone"),
                  SizedBox(height: 8),
                  BlueTextField(
                      onChange: (info) {
                        age = info;
                      },
                      text: "Idade"),
                  SizedBox(height: 8),
                  BlueTextFieldMultiline(
                      onChange: (info) {
                        about = info;
                      },
                      text: "Sobre a Pessoa"),
                  SizedBox(height: 8),
                  BlueButton("Adicionar Foto", () {
                    getImageGalery();
                  }),
                  SizedBox(height: 16),
                  BlueButton("Criar Ente", () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text("Alerta"),
                        content: Text("Deseja Criar o Ente ?"),
                        actions: [
                          TextButton(
                            child: Text("OK"),
                            onPressed: () {
                              createLovedOne(context);
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            child: Text("Cancelar"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
