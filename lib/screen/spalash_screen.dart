import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tederaadmin/screen/RoleScreen.dart';
import 'package:tederaadmin/screen/auth/login.dart';
import 'package:tederaadmin/screen/navigation.dart';
import 'package:tederaadmin/util/color.dart';


class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/svg/logo.svg",width: 150,),
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.only(left: 10),
              width: double.infinity,
              child: Center(
                child: Text(
                  "Local one food system",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 12,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  init(context) async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(
        context, MaterialPageRoute(
            builder: (BuildContext context) => RoleScreen()
            ));

  }
}
