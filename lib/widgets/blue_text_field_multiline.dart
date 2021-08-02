import 'package:flutter/material.dart';

class BlueTextFieldMultiline extends StatelessWidget {
  final Function onChange;
  final String text;

  const BlueTextFieldMultiline({required this.onChange, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        onChanged: (text) => onChange(text),
        keyboardType: TextInputType.multiline,
        minLines: 2,
        maxLines: 10,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: text,
            labelStyle: TextStyle(fontSize: 20)),
      ),
    );
  }
}
