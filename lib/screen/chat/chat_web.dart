import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tederaadmin/screen/base_web_layout.dart';
import 'package:tederaadmin/screen/chat/chat_widget.dart';
import 'package:tederaadmin/screen/commonts/appbar_web.dart';
import 'package:tederaadmin/screen/notification/notification_screen.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

class ChatWeb extends StatefulWidget {
  @override
  _ChatWebState createState() => _ChatWebState();
}

class _ChatWebState extends State<ChatWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWeb(page: 3),
        body:BaseWebLayout(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Restaurant OMG",
                style: textHeader1,
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 375,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) => itemChat(context,index),
                    ),
                  ),
                  Container(
                    width: 375,
                    child: Column(
                      children: [
                        messageContainer(),
                        SizedBox(height: 20),
                        inputChat(context)
                      ],
                    ),
                  )
                ],
              ),
            ],
          ) ,
        )
    );
  }
}
