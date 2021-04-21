import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tederaadmin/screen/chat/chat_detail_mobile.dart';
import 'package:tederaadmin/screen/chat/message_item.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

List<MessageItem> messagesList = [
  MessageItem(message: "How are you doing?", isSelf: true),
  MessageItem(message: "Good?", date: "2021-02-20", isSelf: false),
  MessageItem(message: "Did you receive the order?", isSelf: true),
  MessageItem(message: "The Driver is still not here.", isSelf: false),
  MessageItem(
      message: "How long do I have to wait now till he comes??", isSelf: false),
];

Widget itemChat(BuildContext context, index) {
  return InkWell(
    onTap: () {
      if (!kIsWeb) {
        pushNewScreen(
          context,
          screen: ChatDetailMobile(),
          withNavBar: false,
          pageTransitionAnimation: PageTransitionAnimation.cupertino,
        );
      }
    },
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 74,
        decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Color(0xffF2F2F2), width: 0.5)),
          color: kIsWeb && index == 0 ? Color(0xFFFAFAFA) : Colors.white,
        ),
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 11,
          bottom: 11,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: AssetImage("assets/images/thumbnail.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Restaurant OMG",
                  style: textHeader3,
                ),
                SizedBox(height: 2),
                Text(
                  "Hola",
                  style: TextStyle(
                    color: Color(0xff5b5b5b),
                    fontSize: 9,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("18:15", style: textSmallGray),
                Text("12.02.2009", style: textSmallGray),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget messageContainer() {
  return ListView.builder(
    padding: EdgeInsets.all(0),
    shrinkWrap: true,
    itemCount: messagesList.length,
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (BuildContext context, int index) {
      return itemMessage(index);
    },
  );
}

Widget itemMessage(index) {
  var item = messagesList[index];
  return Row(
    mainAxisAlignment:
        item.isSelf ? MainAxisAlignment.start : MainAxisAlignment.end,
    children: [
      !item.isSelf ? Expanded(child: Container()) : Container(),
      Container(
        constraints: BoxConstraints(maxWidth: 231),
        margin: EdgeInsets.only(
            bottom:
                (index - 1) >= 0 && messagesList[index].isSelf == item.isSelf
                    ? 3
                    : 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [boxShadow],
                color: item.isSelf ? Color(0xfffefffe) : CustomColor.primary,
              ),
              child: Text(
                item.message,
                style: TextStyle(
                  color: item.isSelf ? CustomColor.gray : Colors.white,
                  fontSize: 11,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            index > 0 &&
                    (index + 1) < messagesList.length &&
                    messagesList[index + 1].isSelf == item.isSelf
                ? Container()
                : Container(
                    margin: EdgeInsets.only(top: 4),
                    child: Text("21.01.2021 | 12:15",
                        style: TextStyle(
                          color: Color(0xffd1d3d6),
                          fontSize: 8,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        )),
                  )
          ],
        ),
      ),
      item.isSelf ? Expanded(child: Container()) : Container(),
    ],
  );
}

Widget inputChat(BuildContext context) {
  return Container(
    height: kIsWeb
        ? 46
        : Platform.isIOS
            ? 72
            : 46,
    padding: EdgeInsets.only(
      left: 16,
      bottom: kIsWeb
          ? 0
          : Platform.isIOS
              ? 26
              : 0,
    ),
    decoration: BoxDecoration(color: Colors.white, boxShadow: [boxShadow]),
    child: Row(
      children: [
        Expanded(
            child: TextField(
          style: textDefaultGrey,
          cursorColor: CustomColor.primary,
          cursorHeight: 16,
          decoration: InputDecoration(
            isDense: false,
            hintText: "Type here to chat...",
            border: InputBorder.none,
          ),
        )),
        IconButton(
            icon: Icon(
              Icons.send,
              color: CustomColor.primary,
              size: 16,
            ),
            onPressed: () {})
      ],
    ),
  );
}
