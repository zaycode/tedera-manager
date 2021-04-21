import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tederaadmin/screen/address/address_edit.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

class AddressMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarMobile(
        title: "Address",
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        children: [
          addressListWidget(context),
          SizedBox(height: 20),
          InkWell(
            onTap: (){

            },
            child: Text(
              "+ Add another Adress",
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
      ),
    );
  }
}

Widget addressListWidget(BuildContext context){
  return ListView.builder(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemCount: 3,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 68,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              boxShadow
            ]
        ),
        padding:EdgeInsets.symmetric(horizontal: 12,vertical: 10),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Home",
                      style: TextStyle(
                        color: Color(0xff222b45),
                        fontSize: 13,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Street Restaurant, 12, 9937,\nCorna yxc",
                      style: TextStyle(
                        color: Color(0xff5b5b5b),
                        fontSize: 9,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )
            ),

            Column(
              mainAxisAlignment: index==0?MainAxisAlignment.spaceBetween:MainAxisAlignment.end,
              children: [
                index==0?Icon(
                  Icons.check_circle_outline,
                  color: CustomColor.primary,
                  size: 20,
                ):Container(),

                InkWell(
                  onTap:(){
                    if(!kIsWeb){
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (BuildContext context) => AddressEdit()));
                    }
                  },
                  child: Text(
                    "Edit",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xffec5050),
                      fontSize: 9,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                )
              ],
            )

          ],
        ),
      );
    },

  );
}





