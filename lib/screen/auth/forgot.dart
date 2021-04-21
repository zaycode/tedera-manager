import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tederaadmin/screen/base_web_layout.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/screen/commonts/appbar_web.dart';
import 'package:tederaadmin/screen/navigation.dart';
import 'package:tederaadmin/util/button.dart';
import 'package:tederaadmin/util/style_constant.dart';

class Forgot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBarMobile(
          title: "Forgot Password",
        ),
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 35),
              children: [
                SizedBox(height: 40),
                forgotWidget(context),
              ],
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: buttonForgot(context),
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
              "Forgot Password",
              style: textHeader1,
            ),
            SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  Container(
                    width: 300,
                    child: forgotWidget(context),
                  ),
                  SizedBox(height: 72),
                  buttonForgot(context)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonForgot(BuildContext context) {
    return Center(
        child: Button(
            text: "Submit",
        ));
  }

  Widget forgotWidget(BuildContext context) {
    return Column(
      children: [
        Text(
          "Enter your Email\nto receive temporary password!",
          textAlign: TextAlign.center,
          style: textHeader1,
        ),
        SizedBox(height: 30),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 118,
                child: Text(
                  "Email",
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
                    controller: TextEditingController(),
                    keyboardType: TextInputType.emailAddress,
                    style: textHeader3,
                    minLines: 1,
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(bottom: 5)
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 40),
        Text(
          "You can change your password anytima in the\nProfile settings.",
          textAlign: TextAlign.center,
          style: textLight,
        )
      ],
    );
  }
}
