import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/screen/detail/detail_widget.dart';
import 'package:tederaadmin/screen/home/home_widget.dart';
import 'package:tederaadmin/screen/notification/notification_screen.dart';
import 'package:tederaadmin/screen/widget/category_widget.dart';
import 'package:tederaadmin/screen/widget/item_food.dart';

import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

class DetailMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBarMobile(
          title: "SOGO Pizza Hut",
        ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 16),
            children: [
              bannerDetail(),
              SizedBox(height: 10),
              titleDetailWidget(context),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  workingTimeWidget(),
                  deliveryWidget()
                ],
              ),
              SizedBox(height: 16),
              contactPhone(),
              SizedBox(height: 16),
              Divider(height: 1),
              SizedBox(height: 16),
              CategoryWidget(),
              SizedBox(height: 16),
              buildListFood()
            ],
          ),
          summaryCartSticky()
        ],
      )
    );
  }


  Widget buildListFood() {
    return ListView.separated(
      padding: EdgeInsets.only(bottom: 50),
      separatorBuilder: (context,index){
        return Divider(
          height: 0.5,
          color: Color(0xfff1f1f1),
        );
      },
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 12,
      itemBuilder: (BuildContext context, int index) => ItemFood(),
    );
  }
}
