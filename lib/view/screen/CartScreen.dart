import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_box/view/widgets/globalButton.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> productsCart = [
      {
        "productImagePath": "images/CartImage/imagercart1.png",
        "ImageDiscount": "images/CartImage/cartimagediscount.png",
        "productTitle": "fresh Sandwich",
        "priceProduct": "\$10",
      },
      {
        "productImagePath": "images/CartImage/imagecart2.png",
        "ImageDiscount": "images/CartImage/ImageDiscountcart2.png",
        "productTitle": "Grilled Sandwich",
        "priceProduct": "\$10",
      },
      {
        "productImagePath": "images/CartImage/imagecart2.png",
        "ImageDiscount": "images/CartImage/ImageDiscountcart2.png",
        "productTitle": "Grilled Sandwich",
        "priceProduct": "\$10",
      },
    ];
    final List<Map<String, String>> orderList = [
      {"productTitle": "Full Vegie Salad (1 items)", "priceProduct": "\$10"},
      {"productTitle": "Toasted Sandwich (1 items)", "priceProduct": "\$10"},
      {"productTitle": "Delivery Fee)", "priceProduct": "\$5"},
      {"productTitle": "Discount", "priceProduct": "\$8"},
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
              height: 48.w,
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 30.r,
                color: Colors.black45,
              ),
            ),

            Text(
              "Cart ",
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),
            ),
            Card(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x8C889621),
                      offset: Offset(2, 2),
                      blurRadius: 10,
                    ),
                  ],
                ),
                width: 48.w,
                height: 48.h,
                child: Icon(Icons.search, size: 30.r, color: Colors.black45),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 24),
              height: 350.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: ListView.builder(
                itemCount: productsCart.length,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 14.h, left: 14.w),
                    margin: EdgeInsets.only(bottom: 14.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(3, 3),
                          spreadRadius: 2,
                          blurRadius: 4,
                          color: Colors.black12,
                        ),
                      ],
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    height: 140.h,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 129.w,
                          height: 160.h,
                          child: Stack(
                            children: [
                              Image.asset(
                                "${productsCart[index]["productImagePath"]}",
                                width: 110,
                                height: 110,
                              ),
                              productsCart[index]["ImageDiscount"] == ""
                                  ? SizedBox()
                                  : Positioned(
                                      top: 13.h,
                                      left: 13.w,
                                      child: Image.asset(
                                        "${productsCart[index]["ImageDiscount"]}",
                                      ),
                                    ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 240.w,
                            padding: EdgeInsets.symmetric(horizontal: 12.w),
                            decoration: BoxDecoration(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // spacing: 8,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "${productsCart[index]["priceProduct"]}",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.amber,
                                  ),
                                ),
                                Text(
                                  "${productsCart[index]["productTitle"]}",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w300,
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.black54,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        spacing: 8.w,
                                        children: [
                                          Icon(Icons.star, color: Colors.green),
                                          Text(
                                            "4.5",
                                            style: TextStyle(
                                              color: Colors.green,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: 32.h,
                                            width: 32.h,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: Colors.black12,
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                            child: Center(
                                              child: Icon(Icons.minimize_sharp),
                                            ),
                                          ),
                                          Text(
                                            "1",
                                            style: TextStyle(fontSize: 24.sp),
                                          ),
                                          Container(
                                            height: 32.h,
                                            width: 32.w,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: Colors.black12,
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                            child: Center(
                                              child: Icon(Icons.add),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
            SizedBox(height: 30.h),
            Text(
              "Recepient Address",
              maxLines: 1,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w400,
                overflow: TextOverflow.fade,
              ),
            ),
            SizedBox(height: 18.h),
            Container(
              padding: EdgeInsets.fromLTRB(16.w, 14.h, 36.w, 40.h),
              height: 105.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Text(
                maxLines: 3,
                "9224 Jailyn Terrace, block 2, North Maryjaneton, Tanzania, 4387242",
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Text(
              "Order Review",
              maxLines: 1,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w400,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              height: 150.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: ListView.builder(
                itemCount: productsCart.length + 1,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${orderList[index]["productTitle"]}"),
                        Text("${orderList[index]["priceProduct"]}"),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Price",
                  style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),
                ),
                Text(
                  "\$17",
                  style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            GlobalButton(
              marginTop: 50.h,
              marginBottom: 30.h,
              color: Colors.redAccent,
              onTap: () {},
              title:"Process to Payment",
            ),
          ],
        ),
      ),
    );
  }
}
