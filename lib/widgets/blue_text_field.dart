import 'package:flutter/material.dart';

class BlueTextField extends StatelessWidget {
  final Function onChange;
  final String text;

  const BlueTextField({required this.onChange, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        onChanged: (text) => onChange(text),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: text,
            labelStyle: TextStyle(fontSize: 20)),
      ),
    );
  }
}
