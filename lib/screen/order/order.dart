import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tederaadmin/screen/order/order_mobile.dart';
import 'package:tederaadmin/screen/order/order_web.dart';

class Order extends StatelessWidget {
  final PersistentTabController tabController;
  Order({this.tabController});
  @override
  Widget build(BuildContext context) {
    if(!kIsWeb){
      return OrderMobile(tabController: tabController,);
    }
    return OrderWeb();
  }
}
