import 'package:flutter/material.dart';

class PhysicalSpecific extends StatelessWidget {
  final String nome = 'Corrida';
  final String descricao = 'Corra por uma hora';

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
          nome,
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
                  Column(
                    children: [
                      SizedBox(height: 20),
                      RowTextInfo("Nome: ", nome),
                      SizedBox(height: 20),
                      RowTextInfo("Descricao: ", descricao),
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
