import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tederaadmin/screen/checkout/checkout_success.dart';

import 'package:tederaadmin/screen/checkout/widget_checkout.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/util/button.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

class CheckOutMobile extends StatefulWidget {
  @override
  _CheckOutMobileState createState() => _CheckOutMobileState();
}

class _CheckOutMobileState extends State<CheckOutMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarMobile(
          title: "Payment and Delivery",
        ),
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 50),
              children: [
                ListView.builder(
                    itemCount: dataCheckOut.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return itemCheckout(dataCheckOut[index], index);
                    }),
                SizedBox(height: 28),
                deliveryAddress(),
                SizedBox(height: 28),
                informationCheckout(),
              ],
            ),
            Positioned(
                bottom: 21,
                left: 16,
                right: 16,
                child: Column(
                    children: [
                  summaryCheckout(context),
                  Center(
                    child: Button(
                      text: "Checkout",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    CheckOutSuccess()));
                      },
                    ),
                  )
                ]))
          ],
        ));
  }
}
