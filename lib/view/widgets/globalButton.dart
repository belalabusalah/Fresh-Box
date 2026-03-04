import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  final Function onTap;
  final Widget title;
  final Color color;
  const GlobalButton({
    required this.color,
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap(),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50, bottom: 30),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: title,
      ),
    );
  }
}
