

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_box/view/widgets/custom_all_button.dart';
import 'package:fresh_box/view/widgets/detailsWidget/TextWidget.dart';
import 'package:fresh_box/view/widgets/globalNavigatuonBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(currentIndex: 0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              SizedBox(height: 18.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: "Your Your Location",
                          fontSize: 13.sp,
                          color: Color(0xFF5C616F),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Montserrat",
                        ),
                        TextWidget(
                          text: "9224 Jailyn Terrace, block 2",
                          fontSize: 15.sp,
                          color: Color(0xFF121212),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Montserrat",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60.h,
                    width: 49.w,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  filled: true,

                  hint: TextWidget(
                    text: "what do you want to eat?",
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Montserrat",
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  suffixIcon: Container(
                    margin: EdgeInsets.all(7.r),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Icon(Icons.mic, color: Colors.black, size: 25),
                  ),
                ),
              ),
              CustomAllButton(title: 'Popular Food',
                buttonText: 'See All',
                onPressed: () { },),

              CustomAllButton(title: 'Nearby Restaurant',
                buttonText: 'See All',
                onPressed: () { },),
            ],
          ),
        ),
      ),
    );
  }
}
