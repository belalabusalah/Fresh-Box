

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupTitle extends StatelessWidget {
  final String? text;

   const SupTitle({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black54,
      ),
    );
  }
}
