import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tederaadmin/screen/address/address_edit.dart';
import 'package:tederaadmin/screen/address/address_mobile.dart';
import 'package:tederaadmin/screen/base_web_layout.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/screen/commonts/appbar_web.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

class AddressWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:AppbarWeb(),
      body: BaseWebLayout(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Address",
              style: textHeader1,
            ),
            SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 350,
                  child: addressListWidget(context),
                ),
                Container(
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      addressEditWidget(context),
                      SizedBox(height: 20),
                      buttonUpdateAddress(context)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
