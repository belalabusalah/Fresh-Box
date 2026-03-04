
import 'package:flutter/material.dart';
import 'package:fresh_box/view/screen/CartScreen.dart';
import 'package:fresh_box/view/screen/PopularFoodScreen.dart';

void main (){runApp(MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CartScreen(),
      // home: PopularFoodScreen(),
    );
  }
}
