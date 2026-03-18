import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularFoodScreen extends StatelessWidget {
  const PopularFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> all = [
      {
        "productImagePath": "images/PopularFoodImage/card1.png",
        "ImageDiscount": "images/PopularFoodImage/card1button.png",
        "productTitle": "Coco berry Salad",
      },
      {
        "productImagePath": "images/PopularFoodImage/card2.png",
        "ImageDiscount": "",
        "productTitle": "Marinated Grilled Burger",
      },
      {
        "productImagePath": "images/PopularFoodImage/card3.png",
        "ImageDiscount": "",
        "productTitle": "Fresh Salad with Letuce",
      },
      {
        "productImagePath": "images/PopularFoodImage/card4.png",
        "ImageDiscount": "images/PopularFoodImage/card1button.png",
        "productTitle": "Fresh Salad Green berry",
      },
    ];
    final List<Map<String, dynamic>> allProduct2 = [
      {
        "product2ImagePath": "images/sasa.png",
        "titleProducts2": "Fresh Veg-Salad",
        "supTitleProducts2": "Fresh Salad with Green berry",
        "priceProduct2": "\$8.99",
        "color": Color(0xEB6A5863),
      },
      {
        "product2ImagePath": "images/PopularFoodImage/sasa.png",
        "titleProducts2": "Veg Biryani",
        "supTitleProducts2": "Fresh Salad with Green berry",
        "priceProduct2": "\$12.99",
        "color": Color(0xF0F3F999),
      },
      {
        "product2ImagePath": "images/PopularFoodImage/sasa.png",
        "titleProducts2": "Fresh Veg-Salad",
        "supTitleProducts2": "Fresh Salad with Green berry",
        "priceProduct2": "\$8.99",
        "color": Color(0xD1CFD5D5),
      },
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        // actionsPadding: EdgeInsetsGeometry.symmetric(horizontal: 8),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(5, 5),
                    blurRadius: 5,
                  ),
                ],
              ),
              width: 48.w,
              height: 48.h,
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 30.r,
                color: Colors.black45,
              ),
            ),

            Text(
              "Popular Food ",
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(5, 5),
                    blurRadius: 5,
                  ),
                ],
              ),
              width: 48.w,
              height: 48.h,
              child: Icon(
                Icons.search,
                size: 30.r,
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(24.0.r),
        child: ListView(
          children: [
            Container(
              height: 550.h,
              decoration: BoxDecoration(),
              margin: EdgeInsets.only(bottom: 20.h),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.68,
                  mainAxisSpacing: 22.h,
                  crossAxisSpacing: 22.w,
                ),
                itemCount: all.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 154.w,
                    height: 271.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 8,
                      children: [
                        SizedBox(height: 16),
                        Stack(
                          children: [
                            Container(
                              width: 128.w,
                              height: 128.h,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "${all[index]["productImagePath"]}",
                                  ),
                                ),
                              ),
                            ),
                            all[index]["ImageDiscount"] == ""
                                ? SizedBox()
                                : Positioned(
                                    top: 7.h,
                                    left: 6.w,
                                    child: Image.asset(
                                      "${all[index]["ImageDiscount"]}",
                                    ),
                                  ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(),
                            width: 94.w,
                            child: Text(
                              "${all[index]["productTitle"]}",
                              style: TextStyle(fontWeight: FontWeight.w400),
                              maxLines: 2,
                            ),
                          ),
                        ),
                        Row(
                          spacing: 8.w,
                          children: [
                            Icon(Icons.timer, color: Colors.black38),
                            Text("30", style: TextStyle(color: Colors.black38)),
                            Text(
                              "Min",
                              style: TextStyle(color: Colors.black38),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 8.w,
                              children: [
                                Icon(Icons.star, color: Colors.green),
                                Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                            Icon(Icons.favorite, color: Colors.black38),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            ListTile(
              title: Text(
                "Recommended",
                maxLines: 1,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.fade,
                ),
              ),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {},
                child: Text(
                  "See All ",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24.h),
              height: 550.h,
              width: double.infinity,
              decoration: BoxDecoration(),
              child: ListView.builder(
                itemCount: allProduct2.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 30.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: allProduct2[index]["color"],
                    ),
                    width: 200.w,
                    height: 160.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            height: 105.h,
                            width: 150.w,
                            child: Image.asset(
                              "${allProduct2[index]["product2ImagePath"]}",
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            width: 240.w,
                            padding: EdgeInsets.all(12.r),
                            decoration: BoxDecoration(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // spacing: 8,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${allProduct2[index]["titleProducts2"]}",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Text(
                                  "${allProduct2[index]["supTitleProducts2"]}",
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Text(
                                  "${allProduct2[index]["priceProduct2"]}",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
