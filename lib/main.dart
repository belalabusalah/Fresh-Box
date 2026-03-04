import 'package:flutter/material.dart';
import 'package:fresh_box/view/screen/CartScreen.dart';
import 'package:fresh_box/view/screen/PopularFoodScreen.dart';

import 'view/screen/auth screen/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      // home: CartScreen(),
      // home: PopularFoodScreen(),
    );
  }
}
