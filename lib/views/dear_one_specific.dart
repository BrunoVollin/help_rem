import 'package:flutter/material.dart';

class DearOneSpecific extends StatelessWidget {
  final String name = "Bruce Man";
  final String parentesco = "Primo";
  final String idade = "35 anos";
  final String telefone = "3412789234";
  final String endereco = "rua 1 123 bacana";
  final String about =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur mauris ex, porttitor nec mattis ac, ornare bibendum lectus. Etiam ante purus, pellentesque nec varius a, pellentesque a nunc. Integer vitae libero ac neque maximus tincidunt non ut ligula. Nam scelerisque metus nec metus eleifend, sed mollis leo convallis. In ornare enim mauris, sed gravida quam tincidunt ac. Sed in maximus massa. Phasellus lacinia, felis a dapibus fermentum, leo diam commodo justo, in fringilla odio dolor at sapien. Sed nec lacinia velit, sed tempus nisl. Aliquam sit amet scelerisque nibh. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.";
  final String image =
      "https://ogimg.infoglobo.com.br/in/24581416-aae-bd5/FT1086A/THEROCK.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          iconSize: 30,
          icon: Icon(Icons.arrow_back, color: Color(0xff4B98B5)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          name,
          style: TextStyle(
            color: Color(0xff4B98B5),
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        // color: Color(0xffE1E1E1),
        child: Center(
          child: Align(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                textDirection: TextDirection.rtl,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(image),
                    radius: 100,
                  ),
                  Column(
                    children: [
                      SizedBox(height: 20),
                      RowTextInfo("Parentesco: ", parentesco),
                      RowTextInfo("Idade: ", idade),
                      RowTextInfo("Telefone: ", telefone),
                      RowTextInfo("Endereco: ", endereco),
                      SizedBox(height: 20),
                      ColumnTextInfo("Sobre: ", about),
                    ],
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

class RowTextInfo extends StatelessWidget {
  String chave;
  String valor;

  RowTextInfo(this.chave, this.valor);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        chave,
        style: TextStyle(fontSize: 20),
      ),
      Text(
        valor,
        style: TextStyle(fontSize: 25, color: Color(0xFF4B98B5)),
      ),
    ]);
  }
}

class ColumnTextInfo extends StatelessWidget {
  String chave;
  String valor;

  ColumnTextInfo(this.chave, this.valor);

  @override
  Widget build(BuildContext context) {
    return Column(
        // textDirection: TextDirection.rtl,
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              chave,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 10),
          Text(
            valor,
            style: TextStyle(fontSize: 25, color: Color(0xFF4B98B5)),
          ),
        ]);
  }
}

