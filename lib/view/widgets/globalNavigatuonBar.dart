import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  const CustomBottomNavigationBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      currentIndex: currentIndex,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      type: BottomNavigationBarType.fixed,

      onTap: (index) {
        if (index == currentIndex) return;
        switch (index) {
          case 0:
            Get.offNamed("/homeScreen");
            break;
          case 1:
            Get.offNamed("/cartScreen");
            break;
          case 2:
            Get.offNamed("/productsScreen");
            break;
          case 3:
            Get.offNamed("/popularFoodScreen");
            break;
        }
      },

      items: [
        BottomNavigationBarItem(label: "", icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "", icon: Icon(Icons.shopping_cart)),
        BottomNavigationBarItem(label: "", icon: Icon(Icons.favorite)),
        BottomNavigationBarItem(label: "", icon: Icon(Icons.notifications)),
      ],
    );
  }
}
