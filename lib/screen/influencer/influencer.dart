import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tederaadmin/screen/base_web_layout.dart';
import 'package:tederaadmin/screen/commonts/appbar_web.dart';
import 'package:tederaadmin/screen/notification/notification_screen.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

class Influencer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: AppBar(
                title: SvgPicture.asset(
                  "assets/svg/logo.svg",
                  height: 22,
                ),
                titleSpacing: 16,
                automaticallyImplyLeading: false,
                iconTheme: IconThemeData(color: Colors.transparent),
                actions: [
                  IconButton(
                      icon: Stack(
                        children: [
                          SvgPicture.asset("assets/svg/notification.svg"),
                          Positioned(
                            right: 0,
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: CustomColor.primary,
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          )
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    NotificationScreen()));
                      }),
                ],
              )),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 129,
                height: 35,
                margin: EdgeInsets.only(right: 10, left: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [boxShadow]),
                padding: EdgeInsets.all(11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Last 7 Days",
                      style: textDefaultGrey,
                    ),
                    Icon(
                      CupertinoIcons.chevron_down,
                      size: 14,
                      color: CustomColor.silver,
                    )
                  ],
                ),
              ),
              Expanded(child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: listWidget()))
            ],
          ),
      );
    }
    return Scaffold(
        appBar:AppbarWeb(page: 1,),
        body: BaseWebLayout(
          child:   Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 129,
                height: 35,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [boxShadow]),
                padding: EdgeInsets.all(11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Last 7 Days",
                      style: textDefaultGrey,
                    ),
                    Icon(
                      CupertinoIcons.chevron_down,
                      size: 14,
                      color: CustomColor.silver,
                    )
                  ],
                ),
              ),
              listWidget()
            ],
          ),
        )
    );
  }

  Widget listWidget() {
    return ListView.builder(
        padding: EdgeInsets.only(bottom: 50, top: 8),
        shrinkWrap: true,
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: [boxShadow],
              color: Colors.white,
            ),
            padding: EdgeInsets.only(
              left: 12,
              right: 12,
              top: 11,
              bottom: 11,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Order ID: 2BS9EFD2", style: textHeader3),
                        SizedBox(height: 7),
                        Text("12.02.2022 • 11:35", style: textDefaultGrey),
                      ],
                    )),
                SizedBox(width: 10),
                Text(
                  "12,95 €",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xff222b45),
                    fontSize: 13,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          );
        });


  }
}
