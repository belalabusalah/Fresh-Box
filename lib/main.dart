import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_box/Localization/Local.dart';
import 'package:fresh_box/Localization/Local_controller.dart';
import 'package:fresh_box/view/screen/CartScreen.dart';
import 'package:fresh_box/view/screen/PopularFoodScreen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'view/screen/ProductDetailsScreen.dart';
import 'view/screen/auth screen/SignUp.dart';
import 'view/screen/auth screen/login.dart';
import 'view/screen/homeScreen.dart';
import 'view/screen/onBoarding/onBoardingScreen.dart';

 SharedPreferences? sharedprefe;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedprefe = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocalController controllerLang = Get.put(MyLocalController());
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
          initialRoute: "/homeScreen",
          locale: controllerLang.initialLang,
          translations: MyLocal(),
          getPages: [
            GetPage(name: "/popularFoodScreen",page: () => PopularFoodScreen(),),
            GetPage(name: "/productsScreen", page: () => ProductDetailsScreen(),),
            GetPage(name: "/cartScreen", page: () => CartScreen()),
            GetPage(name: "/loginScreen", page: () => LoginScreen()),
            GetPage(name: "/signUpScreen", page: () => SignUpScreen()),
            GetPage(name: "/OnBoardingScreen", page: () => OnBoardingScreen(),),
            GetPage(name: "/homeScreen", page: () => HomeScreen(),),
          ],
        );
      },
    );
  }
}
