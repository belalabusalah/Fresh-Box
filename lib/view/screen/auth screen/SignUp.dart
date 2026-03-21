import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_box/view/widgets/authWidget/Auth%20Continue%20With.dart';
import 'package:fresh_box/view/widgets/authWidget/LabelText.dart';
import 'package:fresh_box/view/widgets/authWidget/SupTitle.dart';
import 'package:fresh_box/view/widgets/authWidget/TextFieldLogin.dart';
import 'package:fresh_box/view/widgets/authWidget/titleAuth.dart';
import 'package:fresh_box/view/widgets/globalButton.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        // actionsPadding: EdgeInsetsGeometry.symmetric(horizontal: 8),
        centerTitle: true,
        title: Container(
          child: Stack(
            children: [
              // Image.asset("images/LoginImage/FreshBOX.png"),
              // Image.asset("images/LoginImage/BOX.png"),
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleAuth(text: "Let’s get Started"),
            SupTitle(text: "Create an account to continue!"),
            Container(
              padding: EdgeInsets.only(top: 24.h, bottom: 12.h),
              child: LabelText(text: "Username"),
            ),
            TextFieldAuth(hint: LabelText(text: " Create your username ")),
            Container(
              padding: EdgeInsets.only(top: 24.h, bottom: 12.h),
              child: LabelText(text: "Email Id"),
            ),
            TextFieldAuth(hint: LabelText(text: " Enter your e-mail ")),
            Container(
              padding: EdgeInsets.only(top: 24.h, bottom: 12.h),
              child: LabelText(text: "Password "),
            ),
            TextFieldAuth(
              suffixIcon: Icon(Icons.visibility_off_outlined),
              hint: LabelText(text: " Create your password"),
            ),
            GlobalButton(
              width: double.infinity,
              color: Colors.red,
              marginBottom: 20.h,
              marginTop: 30.h,
              title: "Sign Up",
              onTap: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  "Sign in",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            GlobalButtonAuth(
              marginTop: 20.h,
              imageIcon: "images/LoginImage/googleButton.png",
              marginBottom: 20.h,
              color: Colors.white,
              colorText: Colors.black,
              title: "Continue With Google",
              onTap: () {},
            ),
            GlobalButtonAuth(
              marginTop: 0.h,
              imageIcon: "images/LoginImage/googleButton.png",
              marginBottom: 20.h,
              color: Colors.blue,
              colorText: Colors.white,
              title: " Continue With Facebook",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
