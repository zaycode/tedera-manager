import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tederaadmin/screen/base_web_layout.dart';
import 'package:tederaadmin/screen/cart/cart_widget.dart';
import 'package:tederaadmin/screen/checkout/checkout_mobile.dart';
import 'package:tederaadmin/screen/commonts/appbar_web.dart';
import 'package:tederaadmin/screen/notification/notification_screen.dart';
import 'package:tederaadmin/screen/order/order_widget.dart';
import 'package:tederaadmin/util/button.dart';
import 'package:tederaadmin/util/cache_helper.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

class OrderWeb extends StatefulWidget {
  OrderWeb();

  @override
  _OrderWebState createState() => _OrderWebState();
}

class _OrderWebState extends State<OrderWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWeb(
          page: 2,
        ),
        body: BaseWebLayout(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(margin: EdgeInsets.only(bottom: 16), child: Text("Orders", textAlign: TextAlign.start, style: textHeader1)),
              ListView.builder(
                  padding: EdgeInsets.only(bottom: 50,top: 8),
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
            ],
          ),
        ));
  }
}
