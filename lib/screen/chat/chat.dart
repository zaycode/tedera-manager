import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tederaadmin/screen/chat/chat_mobile.dart';
import 'package:tederaadmin/screen/chat/chat_web.dart';

class Chat extends StatelessWidget {
   final PersistentTabController tabController;
   Chat({this.tabController});
  @override
  Widget build(BuildContext context) {
    if(!kIsWeb){
      return ChatMobile(tabController: tabController,);
    }
    return ChatWeb();
  }
}
