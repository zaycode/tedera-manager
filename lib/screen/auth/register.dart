import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tederaadmin/screen/auth/otp.dart';
import 'package:tederaadmin/screen/base_web_layout.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/screen/commonts/appbar_web.dart';
import 'package:tederaadmin/screen/navigation.dart';
import 'package:tederaadmin/util/button.dart';
import 'package:tederaadmin/util/style_constant.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBarMobile(
          title: "Registration",
        ),
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 35),
              children: [
                registerWidget(context),
              ],
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: buttonRegister(context),
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
              "Registration",
              style: textHeader1,
            ),
            SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 300,
                        child: registerWidget(context),
                      ),
                      SizedBox(height: 72),
                      buttonRegister(context)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonRegister(BuildContext context) {
    return Center(
        child: Button(text: "Next Step", onPressed: () => showOTP(context)));
  }

  Widget registerWidget(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Text(
          "Sign up for free!",
          textAlign: TextAlign.center,
          style: textHeader1,
        ),
        SizedBox(height: 60),
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
                  "First Name",
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
                  "Last Name",
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

                    keyboardType: TextInputType.emailAddress,
                    style: textHeader3,
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
                  "Password",
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
                  "Phone",
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
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),

        SizedBox(height: 20),
        Text(
          "You need to verify your phone number\nto veriy your account. Should you lose your number,\nyou need to create a new account.",
          textAlign: TextAlign.center,
          style: textLight,
        )
      ],
    );
  }
}
