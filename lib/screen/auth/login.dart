import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tederaadmin/screen/auth/forgot.dart';
import 'package:tederaadmin/screen/auth/register.dart';
import 'package:tederaadmin/screen/base_web_layout.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/screen/commonts/appbar_web.dart';
import 'package:tederaadmin/screen/navigation.dart';
import 'package:tederaadmin/util/button.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

import 'otp.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBarMobile(
          title: "Login",
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 35),
          children: [loginWidget(context), buttonLogin(context)],
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
              "Login",
              style: textHeader1,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    width: 300,
                    child: loginWidget(context),
                  ),
                  SizedBox(height: 72),
                  buttonLogin(context)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonLogin(BuildContext context) {
    return Button(text: "Login", onPressed: () => showOTP(context));
  }

  Widget loginWidget(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          "assets/svg/login.svg",
          width: 250,
        ),
        SizedBox(height: 20),
        Text(
          "In order to purchase, you need to\nlogin or register at tederaadmin",
          textAlign: TextAlign.center,
          style: textHeader1,
        ),
        SizedBox(height: 20),
        Text(
          "It is free, easy and fast. Give it a try\nyou won’t be dissapinted!",
          textAlign: TextAlign.center,
          style: textLight,
        ),
        SizedBox(height: 30),
        Row(
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
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                        BorderSide(color: Color(0xffEFEFEF), width: 1))),
                child: TextField(
                  minLines: 1,
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  style: textHeader3,
                  decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(bottom: 5),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 118,
              child: Text(
                "Password",
                style: textDefaultGrey,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                        BorderSide(color: Color(0xffEFEFEF), width: 1))),
                child: TextField(
                  obscureText: true,
                  enableSuggestions: false,
                  style: textHeader3,
                  decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(bottom: 5),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Forgot()));
              },
              child: Text(
                "Forgot Password?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: CustomColor.primary,
                  fontSize: 11,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
