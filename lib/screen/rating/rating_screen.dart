import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tederaadmin/screen/base_web_layout.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/screen/commonts/appbar_web.dart';
import 'package:tederaadmin/screen/language/item_language.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

class RatingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: kIsWeb
            ? AppbarWeb()
            : AppBarMobile(
                title: "Restaurant KimiMiki",
              ),
        body: kIsWeb
            ? BaseWebLayout(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Restaurant KimiMiki", style: textHeader1),
                    SizedBox(height: 16),
                    content()
                  ],
                ),
              )
            : ListView(
                padding: EdgeInsets.only(left: 16, top: 8, right: 16),
                children: [content()],
              ));
  }

  Widget content() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [boxShadow]),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Restaurant Rating", style: textHeader3),
                      Text("12.03.2021", style: textSmallGray)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Rating :",
                        style: TextStyle(
                          color: Color(0xff5b5b5b),
                          fontSize: 11,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 20),
                      SvgPicture.asset(
                        "assets/svg/star.svg",
                        color: CustomColor.amber,
                        width: 13,
                      ),
                      SizedBox(width: 2),
                      SvgPicture.asset(
                        "assets/svg/star.svg",
                        color: CustomColor.amber,
                        width: 13,
                      ),
                      SizedBox(width: 2),
                      SvgPicture.asset(
                        "assets/svg/star.svg",
                        color: CustomColor.amber,
                        width: 13,
                      ),
                      SizedBox(width: 2),
                      SvgPicture.asset(
                        "assets/svg/star.svg",
                        color: CustomColor.amber,
                        width: 13,
                      ),
                      SizedBox(width: 2),
                      SvgPicture.asset(
                        "assets/svg/star.svg",
                        width: 13,
                        color: CustomColor.silver,
                      ),
                    ],
                  ),
                ),
                Text(
                  "I love their Salad items. Also love their Sushi items! Extraordinary. An elite standard by which you judge rest of the restaurants. Staff always ready to help, extreme cleanliness, posh atmosphere and delicious food with perfect delivery.",
                  style: TextStyle(
                    color: Color(0xff5b5b5b),
                    fontSize: 11,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
