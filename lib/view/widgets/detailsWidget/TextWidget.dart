import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWidget extends StatelessWidget {
  final String? text;
  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  const TextWidget({
    required this.text,
    required this.fontSize,
    required this.color,
    required this.fontWeight,
    required this.fontFamily,

    super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 3,
      text!,
      style: TextStyle(
        fontSize: fontSize!.sp,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }
}
