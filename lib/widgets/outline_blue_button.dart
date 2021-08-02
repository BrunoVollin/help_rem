import 'package:flutter/material.dart';

class OutlineBlueButton extends StatelessWidget {
  final String text;
  final Function onClick;

  OutlineBlueButton(this.text, this.onClick);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(5, 5))),
        side: BorderSide(width: 1, color: Color(0xff4B98B5)),
      ),
      child: Container(
        alignment: Alignment.center,
        width: 345,
        height: 45,
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: Color(0xff4B98B5)),
        ),
      ),
      onPressed: () {
        onClick();
      },
    );
  }
}
