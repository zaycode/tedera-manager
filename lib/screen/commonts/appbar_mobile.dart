import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tederaadmin/screen/notification/notification_screen.dart';
import 'package:tederaadmin/util/color.dart';

class AppBarMobile extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  AppBarMobile({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("assets/svg/back.svg"),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(title),
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
        ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
