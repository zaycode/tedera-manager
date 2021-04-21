import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/screen/home/home_widget.dart';
import 'package:tederaadmin/screen/home/search_widget.dart';
import 'package:tederaadmin/screen/notification/notification_screen.dart';
import 'package:tederaadmin/screen/restaurants_item.dart';
import 'package:tederaadmin/screen/widget/category_widget.dart';
import 'package:tederaadmin/screen/widget/item_store.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

class HomeMobile extends StatefulWidget {
  final PersistentTabController tabController;

  HomeMobile({this.tabController});

  @override
  _HomeMobileState createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  List<RestaurantItem> restaurants = [
    RestaurantItem(favorite: true, cost: 25),
    RestaurantItem(favorite: false, cost: 0),
    RestaurantItem(favorite: false, cost: 20),
    RestaurantItem(favorite: false, cost: 80),
    RestaurantItem(favorite: true, cost: 0),
    RestaurantItem(favorite: false, cost: 30),
    RestaurantItem(favorite: false, cost: 50),
  ];

  @override
  Widget build(BuildContext context) {
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
              ]),
        ),
        body: ListView.builder(
            itemCount: restaurants.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 16,right: 16),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [boxShadow]),
                child: ItemStore(item: restaurants[index]),
              );
            }),);
  }
}
