import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tederaadmin/screen/base_web_layout.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/screen/commonts/appbar_web.dart';
import 'package:tederaadmin/screen/navigation.dart';
import 'package:tederaadmin/util/button.dart';
import 'package:tederaadmin/util/style_constant.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBarMobile(
          title: "Reset Password",
        ),
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 21),
              children: [
                resetPasswordWidget(context),
              ],
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: buttonResetPassword(context),
            )
          ],
        ),
      );
    }
    return Scaffold(
      appBar: AppbarWeb(),
      body: BaseWebLayout(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Reset Password",
              style: textHeader1,
            ),
            Column(
              children: [
                Container(
                  width: 300,
                  child: resetPasswordWidget(context),
                ),
                SizedBox(height: 72),
                buttonResetPassword(context)
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonResetPassword(BuildContext context) {
    return Center(child: Button(text: "Reset Password", onPressed: () {}));
  }

  Widget resetPasswordWidget(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 21,
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 118,
                child: Text(
                  "Old Password",
                  style: textDefaultGrey,
                ),
              ),
              SizedBox(width: 10),
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                          BorderSide(color: Color(0xffEFEFEF), width: 1))),
                  child: TextFormField(
                    style: textHeader3,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 21,
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 118,
                child: Text(
                  "New Password",
                  style: textDefaultGrey,
                ),
              ),
              SizedBox(width: 10),
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Color(0xffEFEFEF), width: 1))),
                  child: TextFormField(
                    style: textHeader3,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 21,
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 118,
                child: Text(
                  "Repeat Password",
                  style: textDefaultGrey,
                ),
              ),
              SizedBox(width: 10),
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Color(0xffEFEFEF), width: 1))),
                  child: TextFormField(
                    style: textHeader3,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}
