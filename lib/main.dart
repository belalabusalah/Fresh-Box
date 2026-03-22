import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_box/view/screen/CartScreen.dart';
import 'package:fresh_box/view/screen/PopularFoodScreen.dart';
import 'package:get/get.dart';

import 'view/screen/ProductDetailsScreen.dart';
import 'view/screen/auth screen/SignUp.dart';
import 'view/screen/auth screen/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 948),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          initialRoute: "/popularFoodScreen",
          getPages: [
            GetPage(name: "/popularFoodScreen",page: () => PopularFoodScreen(),),
            GetPage(name: "/productsScreen", page: () => ProductDetailsScreen(),),
            GetPage(name: "/cartScreen", page: () => CartScreen()),
            GetPage(name: "/loginScreen", page: () => LoginScreen()),
            GetPage(name: "/signUpScreen", page: () => SignUpScreen()),
          ],
        );
      },
    );
  }
}
