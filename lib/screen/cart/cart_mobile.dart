import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tederaadmin/screen/cart/cart_widget.dart';
import 'package:tederaadmin/screen/checkout/checkout_mobile.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/screen/notification/notification_screen.dart';
import 'package:tederaadmin/util/button.dart';
import 'package:tederaadmin/util/color.dart';

class CartMobile extends StatefulWidget {
  @override
  _CartMobileState createState() => _CartMobileState();
}

class _CartMobileState extends State<CartMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarMobile(
          title: "Shopping Cart",
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  children: [listCart()],
                )),
            Container(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 21),
                child: cartCount(context)
            )
          ],
        ));
  }
}

