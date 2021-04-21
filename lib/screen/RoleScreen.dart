import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tederaadmin/screen/home/home_web.dart';
import 'package:tederaadmin/screen/influencer/influencer.dart';
import 'package:tederaadmin/screen/navigation.dart';
import 'package:tederaadmin/util/cache_helper.dart';
import 'package:tederaadmin/util/style_constant.dart';

class RoleScreen extends StatelessWidget {
  List<String> role = ["MANAGER", "COOK", "DRIVER", "INFLUENCER"];
  SharedPrefs sharedPrefs=SharedPrefs();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 16,
        title: Text("Tedera Admin Role"),
      ),
      body: ListView.separated(
        itemCount: role.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              sharedPrefs.setString("role", role[index]);
              Navigator.pushReplacement(
                  context, MaterialPageRoute(
                  builder: (BuildContext context) => kIsWeb&&role[index]=="INFLUENCER"?Influencer():kIsWeb?HomeWeb():Navigation()
              ));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(role[index], style: textHeader3),
                  Icon(CupertinoIcons.chevron_right,size: 14,)
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    );
  }
}
