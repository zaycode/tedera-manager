import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tederaadmin/screen/widget/menu.dart';
import 'package:tederaadmin/screen/notification/notification_screen.dart';
import 'package:tederaadmin/util/color.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        titleSpacing: 16,
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
                    context, MaterialPageRoute(builder: (BuildContext context) => NotificationScreen()));
              }),
        ],
      ),
      body: ListView(
        children: [
          MenuWidget()
        ],
      ),
    );
  }
}
