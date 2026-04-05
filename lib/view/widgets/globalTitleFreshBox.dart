import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalTitleFreshBox extends StatelessWidget {
  const GlobalTitleFreshBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40.h),
      alignment: Alignment.center,
      width: double.infinity,
      height: 50.h,
      child: Stack(
        children: [
          Positioned(child: Image.asset("images/fresh_box.png")),
          Positioned(right: 0.w, child: Image.asset("images/box.png")),
        ],
      ),
    );
  }
}
