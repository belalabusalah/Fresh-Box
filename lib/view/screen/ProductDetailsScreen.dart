import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_box/view/widgets/detailsWidget/TextWidget.dart';
import 'package:fresh_box/view/widgets/globalButton.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List reviewsImagePath = [
      "images/ProductDetailsScreen/Reviews1",
      "images/ProductDetailsScreen/Reviews2",
      "images/ProductDetailsScreen/Reviews3",
      "images/ProductDetailsScreen/Reviews4",
      "images/ProductDetailsScreen/Reviews5",
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
              "Fresh Sandwich",
              style: TextStyle(fontSize: 21.sp, fontWeight: FontWeight.w500),
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
              child: Icon(Icons.search, size: 30.r, color: Colors.black45),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(),
          child: ListView(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),

                child: Image.asset(
                  "images/ProductDetailsScreen/product details.png",
                  width: 325.w,
                  height: 177.h,
                  fit: BoxFit.fill,
                ),
              ),
              Row(
                spacing: 30.w,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30.h),
                    width: 250.w,
                    child: TextWidget(
                      text: "Authentic Japanese Fresh Sandwich",
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
                text: "Reviews",
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
                fontFamily: "Montserrat",
              ),
              Container(
                decoration: BoxDecoration(),
                height: 50,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: reviewsImagePath.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.asset(
                      reviewsImagePath[index],
                      height: 49.h,
                      width: 52.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 30.h, bottom: 16.h),
                child: TextWidget(
                  text: "Add Instructions",
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
                    text: "Write Instructions",
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
                margin: EdgeInsets.only(top: 35),
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
                        style: TextStyle(fontSize: 26, color: Colors.black),
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
                        style: TextStyle(fontSize: 26, color: Colors.black),
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
    );
  }
}
