import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  final String? text;
  const LabelText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w300,
        color: Colors.black87,
      ),
    );
  }
}
