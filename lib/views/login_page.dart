import 'package:flutter/material.dart';
import 'package:help_rem/widgets/blue_button.dart';
import 'package:help_rem/widgets/blue_text_field.dart';
import 'package:help_rem/widgets/incorrect_login.dart';
import 'package:help_rem/widgets/outline_blue_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Tela de login",
            style: TextStyle(
              color: Color(0xff4B98B5),
              fontSize: 30,
            ),
          ),
        ),
        body: LoginBox(),
      ),
    );
  }
}

class LoginBox extends StatefulWidget {
  @override
  _LoginBoxState createState() => _LoginBoxState();
}

class _LoginBoxState extends State<LoginBox> {
  String email = "";
  String password = "";

  loginCheck(email, password) {
    bool result = email == "b" && password == "123";

    return result;
  }

  onClickLogIn() {
    if (loginCheck(email, password)) {
      Navigator.of(context).pushNamed('/dear_one_list');
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) => IncorrectLogin(),
        barrierDismissible: false,
      );
    }
  }

  onClickCreateAccount() {
    Navigator.of(context).pushNamed('/create_account_page');
  }

  // TextEditingController _emailInputController = TextEditingController as TextEditingController ;
  // TextEditingController _passwordInputController = TextEditingController as TextEditingController ;

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
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlueTextField(
                      onChange: (text) {
                        email = text;
                      },
                      text: "Email"),
                  SizedBox(height: 8),
                  TextField(
                    obscureText: true,
                    onChanged: (text) {
                      password = text;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Senha',
                      labelStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 16),
                  BlueButton("Entrar", onClickLogIn),
                  SizedBox(height: 8),
                  OutlineBlueButton("Criar Conta", onClickCreateAccount),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
