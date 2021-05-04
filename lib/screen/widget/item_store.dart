import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:tederaadmin/screen/detail/detail.dart';
import 'package:tederaadmin/screen/detail/detail_mobile.dart';
import 'package:tederaadmin/screen/restaurants_item.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

class ItemStore extends StatefulWidget {
  final RestaurantItem item;
  ItemStore({this.item});

  @override
  _ItemStoreState createState() => _ItemStoreState();
}

class _ItemStoreState extends State<ItemStore> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kIsWeb? 120 : 96,
      padding: EdgeInsets.all(5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: kIsWeb ? 109:87,
            height: kIsWeb ? 109:87,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                    image: AssetImage("assets/images/thumbnail.jpg"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(width: 10),
          Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Kichi Coffee & Drink",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: textHeader3),
                        SizedBox(height: 2),
                        Text("Street Address 32, 28837, NZ. AM",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: textSmall)
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right:8),
                          child: Text(
                            "Restaurant",
                            style: TextStyle(
                              color: Color(0xff222b45),
                              fontSize: 11,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                            ),

                          ),
                        ),
                        AdvancedSwitch(
                          width: 36,
                          height: 20,
                          controller: AdvancedSwitchController(true),
                        ),

                        Container(
                          margin: EdgeInsets.only(right:8,left: 42),
                          child: Text(
                            "You",
                            style: TextStyle(
                              color: Color(0xff222b45),
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),

                          ),
                        ),
                        AdvancedSwitch(
                          width: 36,
                          height: 20,
                          controller: AdvancedSwitchController(false),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin:EdgeInsets.only(right:9),
                          child:Image.asset("assets/images/user.png")
                        ),

                        Text(
                            "Manager",
                            style: textSmall
                        ),

                      ],
                    )
                  ],
                ),
              )),

        ],
      ),
    );
  }
}
