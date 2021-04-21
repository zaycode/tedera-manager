import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tederaadmin/util/cache_helper.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';
import 'package:tederaadmin/screen/notification/notification_screen.dart';
import 'package:tederaadmin/screen/order/order_widget.dart';


class OrderMobile extends StatefulWidget {
  final PersistentTabController tabController;

  OrderMobile({@required this.tabController});

  @override
  _OrderMobileState createState() => _OrderMobileState();
}

class _OrderMobileState extends State<OrderMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(
            leading: IconButton(
          icon: SvgPicture.asset("assets/svg/back.svg"),
          onPressed: () =>widget.tabController.jumpToTab(1),
        ),
            title: Text("Orders"),
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
            ]),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              child: ListView(
                padding: EdgeInsets.only(left:16,right: 2,bottom: 4),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 129,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          boxShadow
                        ]
                    ),
                    padding:  EdgeInsets.all(11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Text(
                          "Type",
                          style: textDefaultGrey,
                        ),
                        Icon(CupertinoIcons.chevron_down,size: 14, color: CustomColor.silver,)
                      ],
                    ),
                  ),
                  Container(
                    width: 129,

                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          boxShadow
                        ]
                    ),
                    padding: const EdgeInsets.all(11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Text(
                          "Status",
                          style: textDefaultGrey,
                        ),
                        Icon(CupertinoIcons.chevron_down,size: 14, color: CustomColor.silver,)
                      ],
                    ),
                  ),
                  Container(
                    width: 129,

                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          boxShadow
                        ]
                    ),
                    padding: const EdgeInsets.all(11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Text(
                          "Last 30 Days",
                          style: textDefaultGrey,
                        ),
                        Icon(CupertinoIcons.chevron_down,size: 14, color: CustomColor.silver,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(bottom: 50,left: 16,right: 16,top: 8),
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  if(SharedPrefs().getString("role")=="MANAGER"){
                    return itemOrderManager(
                        context,
                        statusListManager[index]);
                  }
                  return itemOrderDriverCook(
                      context,
                      statusListCookDriver[index]);
                }
              ),
            ),
          ],
        ));
  }
}
