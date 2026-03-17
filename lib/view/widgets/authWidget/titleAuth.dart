
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleAuth extends StatelessWidget {
  final String? text;

   const TitleAuth({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      ),
    );
  }
}
