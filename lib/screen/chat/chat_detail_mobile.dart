import 'package:flutter/material.dart';
import 'package:tederaadmin/screen/chat/chat_widget.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';

class ChatDetailMobile extends StatefulWidget {
  @override
  _ChatDetailMobileState createState() => _ChatDetailMobileState();
}

class _ChatDetailMobileState extends State<ChatDetailMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarMobile(
          title: "Restaurant OMG",
        ),
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(left: 16, right: 16, top: 8),
              children: [messageContainer()],
            ),
            Positioned(
              bottom: 0,
                left: 0,
                right: 0,
                child:inputChat(context)
            )
          ],

        ));
  }
}
