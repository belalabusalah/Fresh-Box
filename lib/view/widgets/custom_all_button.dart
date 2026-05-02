
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAllButton extends StatelessWidget {
  final String title;
  final String buttonText;
  final VoidCallback onPressed;

  const CustomAllButton({
    super.key,
    required this.title,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          title,
          maxLines: 1,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat",
            overflow: TextOverflow.ellipsis,

          ),
        ),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
          ),
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontFamily: "Montserrat"
            ),
          ),
        ),
      ),
    );
  }
}