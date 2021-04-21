import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tederaadmin/screen/restaurants_item.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

List<String> filterList = [
  "Delivery",
  "PickUp",
  "Local",
];

Widget itemSlider(BuildContext context) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 7.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage("assets/images/banner.jpg"),
              fit: BoxFit.cover)));
}

List<RestaurantItem> restaurants = [
  RestaurantItem(favorite: true, cost: 25),
  RestaurantItem(favorite: false, cost: 0),
  RestaurantItem(favorite: false, cost: 20),
  RestaurantItem(favorite: false, cost: 80),
  RestaurantItem(favorite: true, cost: 0),
  RestaurantItem(favorite: false, cost: 30),
  RestaurantItem(favorite: false, cost: 50),
  RestaurantItem(favorite: false, cost: 100),
];

Widget filterWidget() {
  return Container(
      height: 30,
      child: ListView.builder(
          padding: EdgeInsets.all(0),
          shrinkWrap: true,
          itemCount: filterList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                index == 0
                    ? Positioned(
                        top: 2,
                        left: 2,
                        right: 2,
                        child: Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 28,
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                              color: CustomColor.primary,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      )
                    : Container(),
                Container(
                  margin: EdgeInsets.only(right: 16),
                  height: 28,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0c000000),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ]),
                  child: Row(
                    children: [
                      Text(
                        filterList[index],
                        style: index == 0
                            ? TextStyle(
                                color: CustomColor.primary,
                                fontSize: kIsWeb ? 12 : 11,
                                fontWeight: FontWeight.w500,
                              )
                            : TextStyle(
                                color: CustomColor.darkBlue,
                                fontSize: kIsWeb ? 12 : 11,
                                fontWeight: FontWeight.w500,
                              ),
                      ),
                      SizedBox(width: 8),
                      index == 0
                          ? SvgPicture.asset(
                              "assets/svg/checked.svg",
                              width: 10,
                            )
                          : Container()
                    ],
                  ),
                ),
              ],
            );
          }));
}

Widget summaryCartSticky() {
  return Positioned(
      right: 0,
      left: 0,
      bottom: 0,
      child: Center(
        child: Container(
            width: kIsWeb ? 375 : double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              boxShadow: [boxShadow],
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        "3 Items",
                        style: TextStyle(
                          color: Color(0xffec5050),
                          fontSize: 11,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        "12,95 €",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xffec5050),
                          fontSize: 15,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "View Cart",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xffec5050),
                        fontSize: 11,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.add_shopping_cart,
                      size: 14,
                      color: CustomColor.primary,
                    )
                  ],
                )
              ],
            )),
      ));
}
