import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tederaadmin/screen/base_web_layout.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/screen/commonts/appbar_web.dart';
import 'package:tederaadmin/util/button.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

class CheckOutSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    log(kBottomNavigationBarHeight.toString());
    if (!kIsWeb) {
      return Scaffold(
          appBar: AppBarMobile(
            title: "Confirmation",
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child:
                Container(
                  height: MediaQuery.of(context).size.height-kBottomNavigationBarHeight,
                  padding: EdgeInsets.only(top: 60),
                  child: Center(
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/svg/ilustration_order.svg"),
                        SizedBox(height: 20),
                        Text("Your Order has been\nsubmitted succesfully!",
                            textAlign: TextAlign.center, style: textHeader1),
                        SizedBox(height: 20),
                        Text(
                            "We'll deliver your order immediately,\nmake sure your order put on the doorstep",
                            textAlign: TextAlign.center,
                            style: textLight),

                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Button(
                        text: "Go to my orders",
                        onPressed: () {},
                      )
                    ],
                  ))
            ],
          ));
    }
    return Scaffold(
        appBar: AppbarWeb(
          page: 0,
        ),
        body: BaseWebLayout(
            child: Center(
          child:
          Column(
            children: [
              SizedBox(height: 52),
              SvgPicture.asset("assets/svg/ilustration_order.svg"),
              SizedBox(height: 20),
              Text("Your Order has been\nsubmitted succesfully!",
                  textAlign: TextAlign.center, style: textHeader1),
              SizedBox(height: 20),
              Text(
                  "We'll deliver your order immediately,\nmake sure your order put on the doorstep",
                  textAlign: TextAlign.center,
                  style: textLight),
              SizedBox(height: 52),
              Button(
                text: "Go to my orders",
                onPressed: () {},
              )
            ],
          ),
        )));
  }
}
