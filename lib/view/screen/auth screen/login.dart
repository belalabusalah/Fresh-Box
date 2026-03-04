import 'package:flutter/material.dart';
import 'package:fresh_box/view/widgets/authWidget/LabelText.dart';
import 'package:fresh_box/view/widgets/authWidget/TextFieldLogin.dart';
import 'package:fresh_box/view/widgets/globalButton.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
        padding: EdgeInsets.all(25),
        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let’s Sign You In",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Text(
                "Welcome back, you’ve been missed!",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 24, bottom: 12),
                child: LabelText(text: "Username or E-mail"),
              ),
              TextFieldLogin(
                hint: LabelText(text: "Enter your username or E-mail"),
              ),
              Container(
                padding: EdgeInsets.only(top: 24, bottom: 12),
                child: LabelText(text: "Password"),
              ),
              TextFieldLogin(
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
                marginTop: 35,
                marginBottom: 14,
                title: Text(
                  "LogIn",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
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
                      fontSize: 15,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              GlobalButton(
                marginTop: 35,
                marginBottom: 12,
                color: Colors.white,
                title: Row(
                  spacing: 6,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("images/LoginImage/googleButton.png"),
                    Text(
                      "Continue With Google",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                onTap: () {},
              ),
              GlobalButton(
                marginTop: 0,
                marginBottom: 0,
                color: Colors.blue,
                title: Row(
                  spacing: 8,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("images/LoginImage/googleButton.png"),
                    Text(
                      "Continue With Facebook",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
