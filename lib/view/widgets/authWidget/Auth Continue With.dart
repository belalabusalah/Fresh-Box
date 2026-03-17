


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalButtonAuth extends StatelessWidget {
  final Function onTap;
  final String title;
  final String imageIcon;
  final Color color;
  final Color colorText;
  final double? marginTop;
  final double? marginBottom;
  const GlobalButtonAuth({
    required this.marginTop,
    required this.colorText,
    required this.imageIcon,
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
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child:Row(
          spacing: 6,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageIcon),
            Text(
              title,
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w300,color: colorText),
            ),
          ],
        ),
      ),
    );
  }
}
