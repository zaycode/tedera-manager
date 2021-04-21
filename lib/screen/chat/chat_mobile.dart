import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tederaadmin/screen/chat/chat_widget.dart';
import 'package:tederaadmin/screen/notification/notification_screen.dart';
import 'package:tederaadmin/util/color.dart';

class ChatMobile extends StatefulWidget {
  final PersistentTabController tabController;

  ChatMobile({this.tabController});

  @override
  _ChatMobileState createState() => _ChatMobileState();
}

class _ChatMobileState extends State<ChatMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: SvgPicture.asset("assets/svg/back.svg"),
              onPressed: () => widget.tabController.jumpToTab(1),
            ),
            title: Text("Messages"),
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
        body: ListView.builder(
          padding: EdgeInsets.only(bottom: 50,),
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) => itemChat(context,index),
        ));
  }
}
