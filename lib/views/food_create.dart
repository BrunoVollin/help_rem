import 'package:flutter/material.dart';
import 'package:help_rem/models/Alimento.dart';
import 'package:help_rem/provider/foodprovider.dart';
import 'package:help_rem/widgets/blue_button.dart';
import 'package:help_rem/widgets/blue_text_field.dart';
import 'package:help_rem/widgets/blue_text_field_multiline.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class CreateFood extends StatelessWidget {
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
            "Criando Alimento",
            style: TextStyle(
              color: Color(0xff4B98B5),
              fontSize: 30,
            ),
          ),
        ),
        body: CreateFoodBox(),
      ),
    );
  }
}

class CreateFoodBox extends StatefulWidget {
  @override
  _CreateFoodBoxState createState() => _CreateFoodBoxState();
}

class _CreateFoodBoxState extends State<CreateFoodBox> {
  late Alimento food;

  String name = "";
  String can = "";

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

  createFood(context) {
    Provider.of<FoodProvider>(context, listen: false).put(
      Alimento(id: '2', nome: name, pode: can, imagem: image),
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
                        can = info;
                      },
                      text: "Pode"),
                  SizedBox(height: 8),
                  BlueButton("Adicionar Foto", () {
                    getImageGalery();
                  }),
                  SizedBox(height: 16),
                  BlueButton("Adicionar alimento", () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text("Alerta"),
                        content: Text("Deseja adicionar o alimento?"),
                        actions: [
                          TextButton(
                            child: Text("OK"),
                            onPressed: () {
                              createFood(context);
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
