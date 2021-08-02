import 'package:flutter/material.dart';

class IncorrectLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text("Erro de Login"),
        content: Text("Login ou senha Incorretos"),
        actions: [
          TextButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ]);
  }
}
