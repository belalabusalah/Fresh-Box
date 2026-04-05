import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_box/view/widgets/globalButton.dart';

import '../widgets/CustomFullAppBar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> productsCart = [
      {
        "productImagePath": "images/cart_image/imagercart1.png",
        "ImageDiscount": "images/cart_image/cartimagediscount.png",
        "productTitle": "fresh Sandwich",
        "priceProduct": "\$10",
      },
      {
        "productImagePath": "images/cart_image/imagecart2.png",
        "ImageDiscount": "images/cart_image/ImageDiscountcart2.png",
        "productTitle": "Grilled Sandwich",
        "priceProduct": "\$10",
      },
      {
        "productImagePath": "images/cart_image/imagecart2.png",
        "ImageDiscount": "images/cart_image/ImageDiscountcart2.png",
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
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(height: 32.h),
            CustomFullAppBar(
              onPressedLeading: () {},
              text: "Cart",
              icons: Icons.search,
              spacing: 73,
              onPressedAction: () {},
            ),
            Container(
              height: 800.h,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
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
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.green,
                                                ),
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
                                                        BorderRadius.circular(
                                                          6,
                                                        ),
                                                  ),
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.minimize_sharp,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "1",
                                                  style: TextStyle(
                                                    fontSize: 24.sp,
                                                  ),
                                                ),
                                                Container(
                                                  height: 32.h,
                                                  width: 32.w,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black12,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          6,
                                                        ),
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
                    SizedBox(height: 30.h),
                    Text(
                      "Recepient Address",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Montserrat",
                        overflow: TextOverflow.fade,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 18.h),
                    Container(
                      padding: EdgeInsets.fromLTRB(16.w, 14.h, 36.w, 40.h),
                      // height: 105.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Text(
                        maxLines: 2,
                        "9224 Jailyn Terrace, block 2, North Maryjaneton, Tanzania, 4387242",

                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w300,
                          overflow: TextOverflow.ellipsis,
                          fontFamily: "Montserrat",
                          color: Colors.black45,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      "Order Review",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis,
                        fontFamily: "Montserrat",
                        color: Colors.black87,
                      ),
                    ),
                    ListView.builder(
                      itemCount: productsCart.length + 1,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${orderList[index]["productTitle"]}",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black54,
                                ),
                              ),
                              Text(
                                "${orderList[index]["priceProduct"]}",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Price",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontFamily: "Montserrat",
                          ),
                        ),
                        Text(
                          "\$17",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontFamily: "Montserrat",
                          ),
                        ),
                      ],
                    ),
                    GlobalButton(
                      width: double.infinity,
                      marginTop: 50.h,
                      marginBottom: 30.h,
                      color: Colors.redAccent,
                      onTap: () {},
                      title: "Process to Payment",
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
