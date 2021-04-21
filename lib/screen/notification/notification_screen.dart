import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/screen/notification/item_notification.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';


class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  var isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMobile(title: "Notifications"),
      body: isEmpty
          ? empty()
          : ListView.builder(
              padding: EdgeInsets.only(left: 16, right: 16, top: 8),
              itemCount: 5,
              itemBuilder: (context, index) {
                return ItemNotification(index);
              }),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: FloatingActionButton(
          backgroundColor: CustomColor.primary,
          child: Text(isEmpty ? "Show" : "Empty"),
          onPressed: () => {
            setState(() {
              isEmpty = !isEmpty;
            })
          },
        ),
      ),
    );
  }

  Widget empty() {
    return Center(
      child: Text("You don’t have any notification",
          textAlign: TextAlign.center, style: textDefault),
    );
  }

}
