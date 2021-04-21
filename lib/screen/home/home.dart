import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tederaadmin/screen/home/home_mobile.dart';
import 'package:tederaadmin/screen/home/home_web.dart';

class Home extends StatelessWidget {
  final PersistentTabController tabController;
  Home({this.tabController});
  @override
  Widget build(BuildContext context) {
    if(!kIsWeb){
      return HomeMobile();
    }
    return HomeWeb();
  }
}
