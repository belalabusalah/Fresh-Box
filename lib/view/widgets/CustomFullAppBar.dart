import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFullAppBar extends StatelessWidget {
  late IconData icons;
  late String text;
  late double spacing;
  late VoidCallback onPressedLeading;
  late VoidCallback onPressedAction;
  CustomFullAppBar({
    required this.text,
    required this.icons,
    required this.spacing,
    required this.onPressedLeading,
    required this.onPressedAction,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: spacing.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(3, 3),
                blurRadius: 5,
              ),
            ],
          ),
          width: 48.w,
          height: 48.w,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 30.r,
              color: Colors.black45,
            ),
            onPressed: onPressedLeading,
          ),
        ),

        Text(
          text,
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(3, 3),
                blurRadius: 5,
              ),
            ],
          ),
          width: 48.w,
          height: 48.w,
          child: IconButton(
            onPressed: onPressedAction,
            icon: Icon
               (icons, size: 30.r, color: Colors.black45),
            ),
          ),

      ],
    );
  }
}
