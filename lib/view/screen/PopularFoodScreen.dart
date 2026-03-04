import 'package:flutter/material.dart';

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
        "product2ImagePath": "images/PopularFoodImage/sasa.png",
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
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(5, 5),
                    blurRadius: 5,
                  ),
                ],
              ),
              width: 48,
              height: 48,
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 30,
                color: Colors.black45,
              ),
            ),

            Text(
              "Popular Food ",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(5, 5),
                    blurRadius: 5,
                  ),
                ],
              ),
              width: 48,
              height: 48,
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.black45,
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
              height: 550,
              decoration: BoxDecoration(),
              margin: EdgeInsets.only(bottom: 20),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.68,
                  mainAxisSpacing: 22,
                  crossAxisSpacing: 22,
                ),
                itemCount: all.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 154,
                    height: 271,
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
                              width: 128,
                              height: 128,
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
                                    top: 7,
                                    left: 6,
                                    child: Image.asset(
                                      "${all[index]["ImageDiscount"]}",
                                    ),
                                  ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(),
                            width: 94,
                            child: Text(
                              "${all[index]["productTitle"]}",
                              style: TextStyle(fontWeight: FontWeight.w400),
                              maxLines: 2,
                            ),
                          ),
                        ),
                        Row(
                          spacing: 8,
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
                              spacing: 8,
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
                  fontSize: 18,
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
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              height: 550,
              width: double.infinity,
              decoration: BoxDecoration(),
              child: ListView.builder(
                itemCount: allProduct2.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: allProduct2[index]["color"],
                    ),
                    width: 200,
                    height: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            height: 105,
                            width: 150,
                            child: Image.asset(
                              "${allProduct2[index]["product2ImagePath"]}",
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            width: 240,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // spacing: 8,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${allProduct2[index]["titleProducts2"]}",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Text(
                                  "${allProduct2[index]["supTitleProducts2"]}",
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Text(
                                  "${allProduct2[index]["priceProduct2"]}",
                                  style: TextStyle(
                                    fontSize: 20,
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
