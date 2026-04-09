import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_box/view/widgets/CustomFullAppBar.dart';
import 'package:fresh_box/view/widgets/detailsWidget/TextWidget.dart';
import 'package:fresh_box/view/widgets/globalButton.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> reviewsImage = [
      {"pathImage": "images/product_details_screen/reviews1.png"},
      {"pathImage": "images/product_details_screen/reviews2.png"},
      {"pathImage": "images/product_details_screen/reviews3.png"},
      {"pathImage": "images/product_details_screen/reviews4.png"},
      {"pathImage": "images/product_details_screen/reviews5.png"},
    ];
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18.0.r),
        child: Column(
          spacing: 20.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            CustomFullAppBar(
              onPressedLeading: (){},
              text: "titleDetails".tr,
              icons: Icons.more_vert,
              onPressedAction: (){},
              spacing: 34,
            ),
            Container(
              height: 780.h,
              decoration: BoxDecoration(),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.asset(
                        "images/product_details_screen/product_details.png",
                        width: 334.w,
                        height: 177.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Row(
                      spacing: 28.w,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30.h),
                          width: 250.w,
                          child: TextWidget(
                            text: "titleProduct".tr,
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                            fontFamily: "Montserrat",
                          ),
                        ),
                        TextWidget(
                          text: "\$12",
                          fontSize: 27,
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Montserrat",
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4, bottom: 4),
                      width: double.infinity,
                      child: TextWidget(
                        text:
                            "Lorem ipsum et dolor sit amet, and consectetur eadipiscing elit. Ametmo magna the cursus yum dolor praesenta the  pulvinar tristique the food.",
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black38,
                        fontFamily: "Montserrat",
                      ),
                    ),
                    TextWidget(
                      text: "reviews".tr,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                      fontFamily: "Montserrat",
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12.h),
                      decoration: BoxDecoration(),
                      height: 50.h,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: reviewsImage.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.only(right: 16.w),
                          height: 55.h,
                          width: 52.w,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(16.r),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "${reviewsImage[index]["pathImage"]}",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 30.h, bottom: 16.h),
                      child: TextWidget(
                        text: "instructions".tr,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                        fontFamily: "Montserrat",
                      ),
                    ),
                    TextField(
                      maxLines: 6,
                      decoration: InputDecoration(
                        fillColor: Colors.black12,
                        filled: true,
                        hint: TextWidget(
                          text: "writeInstructions".tr,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black38,
                          fontFamily: "Montserrat",
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      width: double.infinity,
                      height: 166.h,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 16.w),
                            alignment: Alignment.center,
                            height: 46.h,
                            width: 36.w,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Text(
                              "-",
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextWidget(
                            text: "1",
                            fontSize: 26,
                            color: Colors.black,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16.w, right: 16),
                            alignment: Alignment.center,
                            height: 46.h,
                            width: 36.w,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Text(
                              "+",
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          GlobalButton(
                            width: 200,
                            color: Colors.red,
                            marginBottom: 20.h,
                            marginTop: 30.h,
                            title: "Add to Cart",
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
