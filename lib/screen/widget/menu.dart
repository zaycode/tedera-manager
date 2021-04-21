import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tederaadmin/screen/address/address.dart';
import 'package:tederaadmin/screen/auth/edit_profile.dart';
import 'package:tederaadmin/screen/auth/login.dart';
import 'package:tederaadmin/screen/auth/register.dart';
import 'package:tederaadmin/screen/favorites/favorite.dart';
import 'package:tederaadmin/screen/language/language_screen.dart';
import 'package:tederaadmin/screen/webview/web_view_screen.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [header(context), listMenuWidget(context)],
    );
  }

  Widget header(BuildContext context) {
    return Container(
      height: 70,
      color: CustomColor.primary,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                "CC",
                style: textHeader2,
              ),
            ),
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(left: 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Charlie Chapin",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "client@email.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          )),
          IconButton(
              icon: SvgPicture.asset("assets/svg/edit.svg", width: 14),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => EditProfile()));
              })
        ],
      ),
    );
  }

  Widget listMenuWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, top: 32),
      child: Column(
        children: [

          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => LanguageScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 35),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/svg/language.svg",
                    width: 10,
                  ),
                  SizedBox(width: 6),
                  Text("Languages", style: textHeader3)
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => WebViewScreen(
                            title: "Help & Support",
                          )));
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 35),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/svg/phone.svg",
                    width: 10,
                  ),
                  SizedBox(width: 6),
                  Text("Help & Support", style: textHeader3)
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => WebViewScreen(
                            title: "Privacy Policy",
                          )));
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 35),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/svg/privacy.svg",
                    width: 10,
                  ),
                  SizedBox(width: 6),
                  Text("Privacy Policy", style: textHeader3)
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => WebViewScreen(
                            title: "Term & Condition",
                          )));
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 35),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/svg/term.svg",
                    width: 10,
                  ),
                  SizedBox(width: 6),
                  Text("Terms and Condition", style: textHeader3)
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => WebViewScreen(
                        title: "About Tedera",
                      )));
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 35),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/svg/about.svg",
                    width: 10,
                  ),
                  SizedBox(width: 6),
                  Text("About", style: textHeader3)
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 35),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/logout.svg",
                  width: 10,
                ),
                SizedBox(width: 6),
                Text("Log out", style: textHeader3)
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Login()));
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 35),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Login", style: textHeader3)
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Register()));
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 35),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Register", style: textHeader3)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
