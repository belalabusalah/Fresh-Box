import 'package:flutter/cupertino.dart';
import 'package:fresh_box/main.dart';
import 'package:get/get.dart';

class MyLocalController extends GetxController {
  Locale initialLang =
    sharedprefe?.getString("lang")==null ? Get.deviceLocale!:Locale(sharedprefe!.getString("lang")!);


  void changeLang(String codelang) {
    Locale locale = Locale(codelang);
    sharedprefe!.setString("lang", codelang);
    Get.updateLocale(locale);
  }

  void toggleLang() {
    if (Get.locale?.languageCode == 'ar') {
      changeLang("en");
    } else {
     changeLang("ar");
    }
  }
}
