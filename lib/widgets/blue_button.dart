import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final String text;
  final Function onClick;

  BlueButton(this.text, this.onClick);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(355, 50)),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
      onPressed: () {
        onClick();
      },
    );
  }
}
