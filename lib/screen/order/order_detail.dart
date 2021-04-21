
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tederaadmin/screen/order/order_detail_mobile.dart';
import 'package:tederaadmin/screen/order/order_detail_web.dart';
import 'package:tederaadmin/screen/order/order_mobile.dart';
import 'package:tederaadmin/screen/order/order_web.dart';

class OrderDetail extends StatelessWidget {
  final PersistentTabController tabController;
  OrderDetail({this.tabController});
  @override
  Widget build(BuildContext context) {
    if(!kIsWeb){
      return OrderDetailMobile();
    }
    return OrderDetailWeb();
  }
}