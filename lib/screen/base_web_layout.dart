import 'package:flutter/material.dart';
import 'package:tederaadmin/screen/home/home_widget.dart';

class BaseWebLayout extends StatelessWidget {
  final Widget child;

  BaseWebLayout({this.child});
  @override
  Widget build(BuildContext context) {
    return  ListView(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 50),
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 900,
              child: child,
            )
          ],
        )
      ],
    );
  }
}
