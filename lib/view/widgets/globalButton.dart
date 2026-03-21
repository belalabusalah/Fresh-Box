

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalButton extends StatelessWidget {
  final Function onTap;
  final String title;
  final Color color;
  final double? marginTop;
  final double? marginBottom;
  final double? width;
  const GlobalButton({
    required this.marginTop,
    required this.width,
    required this.marginBottom,
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
         margin: EdgeInsets.only(top: marginTop!, bottom: marginBottom!),
        height: 50.h,
        width: width!.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 21.sp,
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat"
          ),
        ),
      ),
    );
  }
}
