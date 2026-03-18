

import 'package:flutter/material.dart';

class TextFieldAuth extends StatelessWidget {
  final Widget? hint;
  final Widget? suffixIcon;
  const TextFieldAuth({ this.suffixIcon,required this.hint,super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hint: hint,
        suffixIcon:suffixIcon ,

        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: Colors.white
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: Colors.white
          ),
        ),
      ),
    );
  }
}
