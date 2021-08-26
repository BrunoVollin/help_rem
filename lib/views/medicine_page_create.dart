import 'package:flutter/material.dart';
import 'package:help_rem/models/Remedio.dart';
import 'package:help_rem/provider/medicineprovider.dart';
import 'package:help_rem/widgets/blue_button.dart';
import 'package:help_rem/widgets/blue_text_field.dart';
import 'package:help_rem/widgets/blue_text_field_multiline.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class CreateMedicine extends StatelessWidget {
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
            "Criando Remédio",
            style: TextStyle(
              color: Color(0xff4B98B5),
              fontSize: 30,
            ),
          ),
        ),
        body: CreateMedicineBox(),
      ),
    );
  }
}

class CreateMedicineBox extends StatefulWidget {
  @override
  _CreateMedicineBoxState createState() => _CreateMedicineBoxState();
}

class _CreateMedicineBoxState extends State<CreateMedicineBox> {
    late Remedio ente;

  String nome = "";
  String horario = "";
  int quantidade = 0;

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

  createMedicine(context) {
    Provider.of<MedicineProvider>(context, listen: false).put(
      Remedio(
          id: '3',
          nome: nome,
          horario: horario,
          quantidade: quantidade,
          imagem: image
          ),
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
                  BlueTextField(onChange: (info) {
                    nome= info;
                  }, text: "Nome"),
                  SizedBox(height: 8),
                  BlueTextField(onChange: (info) { horario = info;}, text: "Horário"),
                  SizedBox(height: 8),
                  BlueTextField(onChange: (info) { quantidade = info;}, text: "Quantidade"),
                  SizedBox(height: 8),
                  BlueButton("Adicionar Foto", () {getImageGalery();}),
                  SizedBox(height: 16),
                  BlueButton("Criar Remedio", () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text("Alerta"),
                        content: Text("Deseja Criar o Remedio?"),
                        actions: [
                          TextButton(
                            child: Text("OK"),
                            onPressed: () {
                              createMedicine(context);
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