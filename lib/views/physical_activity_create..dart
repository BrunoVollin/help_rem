import 'package:flutter/material.dart';
import 'package:help_rem/models/Atividade.dart';
import 'package:help_rem/provider/physical_activityprovider.dart';
import 'package:help_rem/widgets/blue_button.dart';
import 'package:help_rem/widgets/blue_text_field.dart';
import 'package:help_rem/widgets/blue_text_field_multiline.dart';
import 'package:image_picker/image_picker.dart';
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
        body: PhysicalActivityCreateBox(),
      ),
    );
  }
}

class PhysicalActivityCreateBox extends StatefulWidget {
  @override
  _PhysicalActivityCreateBoxState createState() =>
      _PhysicalActivityCreateBoxState();
}

class _PhysicalActivityCreateBoxState extends State<PhysicalActivityCreateBox> {
  late Atividade activity;

  String name = "";
  String descrition = "";
  String time = "";

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

  createPhysicalActivity(context) {
    Provider.of<PhysicalProvider>(context, listen: false).put(
      Atividade(
          id: '1',
          nome: 'name',
          descricao: 'descrition',
          horario: 'time',
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
                        time = info;
                      },
                      text: "Horario"),
                  SizedBox(height: 8),
                  BlueTextFieldMultiline(
                      onChange: (info) {
                        descrition = info;
                      },
                      text: "Descrição"),
                  SizedBox(height: 8),
                  BlueButton("Adicionar Foto", () {
                    getImageGalery();
                  }),
                  SizedBox(height: 16),
                  BlueButton("Criar Atividade", () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text("Alerta"),
                        content: Text("Deseja adicionar o atividade?"),
                        actions: [
                          TextButton(
                            child: Text("OK"),
                            onPressed: () {
                              createPhysicalActivity(context);
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
