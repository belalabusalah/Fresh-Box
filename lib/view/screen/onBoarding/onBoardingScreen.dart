import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_box/view/widgets/detailsWidget/TextWidget.dart';
import 'package:fresh_box/view/widgets/globalButton.dart';
import 'package:fresh_box/view/widgets/globalTitleFreshBox.dart';
import 'package:get/get.dart';


class OnBoardingScreen extends StatefulWidget {

  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController(initialPage: 0);

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> listOnBoarding = [
      {
        "urlImage": "images/onBoardingScreen/Onboarding_1.png",
        "title": "titlePage1".tr,
        "subtitle":
            "subtitlePage1".tr,
      },
      {
        "urlImage": "images/onBoardingScreen/Onboarding_2.png",
        "title": "titlePage2".tr,
        "subtitle":
            "subtitlePage2".tr,
      },
      {
        "urlImage": "images/onBoardingScreen/Onboarding_3.png",
        "title": "titlePage3".tr,
        "subtitle":
            "subtitlePage3".tr,
      },
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(height: 40.h,),
              GlobalTitleFreshBox(),
              SizedBox(height: 72.h,),
              Expanded(
                child: PageView.builder(
                  onPageChanged: (value){
                   setState(() {
                     currentIndex=value;
                   });
                  },
                  itemCount: listOnBoarding.length,
                  controller: pageController,
                  itemBuilder: (context, index) {
                    return Column(
                        children: [
                          Image.asset("${listOnBoarding[index]["urlImage"]}",width: 250.w,height: 250.h,),
                          SizedBox(height: 40.h,),
                          TextWidget(
                            text: listOnBoarding[index]["title"].toString(),
                            color: Colors.black,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            fontSize: 22.sp,

                          ),
                          SizedBox(height: 4.h,),
                          TextWidget(
                            text:listOnBoarding[index]["subtitle"].toString(),
                            color: Colors.black,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w300,
                            fontSize: 15.sp,


                          ),

                        ]);
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: List.generate(
                  listOnBoarding.length, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  width: currentIndex == index ? 20.w : 8.w,
                  height: 8.h,
                  decoration: BoxDecoration(
                    color: currentIndex == index ? Color(0xFF121212) : Colors.grey,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                );
              }),),
              SizedBox(height: 32.h,),
              if (currentIndex != listOnBoarding.length-1) Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: "skip".tr,
                    fontSize: 17,
                    color: Color(0xFF121212),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Montserrat",
                  ),
                  GlobalButton(
                      marginTop: 0,
                      width: 137,
                      marginBottom: 0,
                      title: "next".tr,
                      color: Color(0xFF121212),
                      onTap: (){}),
                ],)
              else GlobalButton(
                  marginTop: 0,
                  width: 325,
                  marginBottom: 0,
                  title: "getStarted".tr,
                  color: Color(0xFF121212),
                  onTap: (){
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Get.toNamed("/homeScreen");
                    });
                  }),
              SizedBox(height: 45.h,),


            ],
          ),
        ),
      ),
    );
  }
}
