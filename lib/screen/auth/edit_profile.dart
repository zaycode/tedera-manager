import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tederaadmin/screen/auth/otp.dart';
import 'package:tederaadmin/screen/auth/reset_password.dart';
import 'package:tederaadmin/screen/base_web_layout.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/screen/commonts/appbar_web.dart';
import 'package:tederaadmin/screen/navigation.dart';
import 'package:tederaadmin/screen/widget/base_bottom_sheet.dart';
import 'package:tederaadmin/util/button.dart';
import 'package:tederaadmin/util/style_constant.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBarMobile(
          title: "Profile",
        ),
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 21),
              children: [
                editProfileWidget(context),
              ],
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: buttonEditProfile(context),
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
              "Profile",
              style: textHeader1,
            ),
            Column(
              children: [
                Container(
                  width: 300,
                  child: editProfileWidget(context),
                ),
                SizedBox(height: 72),
                buttonEditProfile(context)
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonEditProfile(BuildContext context) {
    return Center(
        child: Button(text: "Edit Profile", onPressed: () => showOTP(context)));
  }

  Widget editProfileWidget(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 22),
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
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                          BorderSide(color: Color(0xffEFEFEF), width: 1))),
                  child: TextField(
                    controller: TextEditingController()..text = 'Mathias',
                    minLines: 1,
                    maxLines: 1,
                    style: textHeader3,
                    decoration: InputDecoration(
                      hintText: "Input First Name",
                      isDense: true,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(bottom: 5),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(bottom: 22),
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
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                          BorderSide(color: Color(0xffEFEFEF), width: 1))),
                  child: TextField(
                    controller: TextEditingController()..text = 'Thomason',
                    minLines: 1,
                    maxLines: 1,
                    style: textHeader3,
                    decoration: InputDecoration(
                      hintText: "Input Last Name",
                      isDense: true,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(bottom: 5),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 22),
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
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                          BorderSide(color: Color(0xffEFEFEF), width: 1))),
                  child: TextField(
                    controller: TextEditingController()..text = 'syukurzay@gmail.com',
                    minLines: 1,
                    maxLines: 1,
                    style: textHeader3,
                    decoration: InputDecoration(
                      hintText: "Input address",
                      isDense: true,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(bottom: 5),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 22),
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
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                          BorderSide(color: Color(0xffEFEFEF), width: 1))),
                  child: TextField(
                    controller: TextEditingController()..text = '+456123321456',
                    minLines: 1,
                    maxLines: 1,
                    style: textHeader3,
                    decoration: InputDecoration(
                      hintText: "Input Phone",
                      isDense: true,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(bottom: 5),
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
                  "Role",
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
                    controller: TextEditingController()..text = 'Driver',
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),


        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ResetPassword()));
          },
          child: Text(
            "Reset Password",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xffec5050),
              fontSize: 11,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}
