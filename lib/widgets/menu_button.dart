import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final Function onClick;
  final String text;
  final IconData icon;

  const MenuButton(
      {required this.onClick, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onClick,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(355, 100)),
      ),
      child: Row(children: [
        Icon(icon, size: 50,),
        SizedBox(
          width: 15,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 23),
        ),
      ]),
    );
  }
}
