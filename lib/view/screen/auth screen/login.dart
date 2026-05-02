
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_box/view/widgets/authWidget/GlobalButtonAuth.dart';
import 'package:fresh_box/view/widgets/authWidget/LabelText.dart';
import 'package:fresh_box/view/widgets/authWidget/SupTitle.dart';
import 'package:fresh_box/view/widgets/authWidget/TextFieldLogin.dart';
import 'package:fresh_box/view/widgets/authWidget/titleAuth.dart';
import 'package:fresh_box/view/widgets/globalButton.dart';
import 'package:fresh_box/view/widgets/globalTitleFreshBox.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GlobalTitleFreshBox(),
              TitleAuth(text: "Let’s Sign You In"),
              SupTitle(text: "Welcome back, you’ve been missed!"),
              Container(
                padding: EdgeInsets.only(top: 24.h, bottom: 12.h),
                child: LabelText(text: "Username or E-mail"),
              ),
              TextFieldAuth(
                hint: LabelText(text: "Enter your username or E-mail"),
              ),
              Container(
                padding: EdgeInsets.only(top: 24, bottom: 12),
                child: LabelText(text: "Password"),
              ),
              TextFieldAuth(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility_off_outlined),
                ),
                hint: LabelText(text: "Enter your password"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GlobalButton(
                width: double.infinity,
                marginTop: 35,
                marginBottom: 14,
                title: "LogIn",
                onTap: () {},
                color: Colors.redAccent,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              GlobalButtonAuth(
                colorText: Colors.black,
                marginTop: 35.h,
                marginBottom: 12.h,
                color: Colors.white,
                onTap: () {},
                title: "Continue With Google",
                imageIcon: "images/login_image/google_button.png",
              ),
              GlobalButtonAuth(
                colorText: Colors.white,
                marginTop: 0,
                marginBottom: 0,
                color: Colors.blue,
                title: "Continue With Facebook",
                onTap: () {},
                imageIcon: "images/login_image/vector.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
