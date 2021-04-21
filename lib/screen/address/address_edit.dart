import 'package:flutter/material.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/util/button.dart';
import 'package:tederaadmin/util/style_constant.dart';

class AddressEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarMobile(
        title: "Edit Address",
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            children: [
              addressEditWidget(context)],
          ),
          Positioned(
            bottom: 20,
              left: 0,
              right: 0,
              child: Center(
            child: buttonUpdateAddress(context),
          ))
        ],
      ),
    );
  }
}

Widget addressEditWidget(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 118,
            child: Text(
              "Name",
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
                controller: TextEditingController()..text = 'Home',
                minLines: 1,
                maxLines: 1,
                style: textDefaultGrey,
                decoration: InputDecoration(
                  hintText: "Input Name",
                  isDense: true,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(bottom: 5),
                ),
              ),
            ),
          )
        ],
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 118,
            child: Text(
              "Addresss\nDescription",
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
                controller: TextEditingController()..text = 'Behind the white house\nnear the garbage',
                minLines: 2,
                maxLines: 5,

                style: textDefaultGrey,
                decoration: InputDecoration(
                  hintText: "Input Name",
                  isDense: true,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(bottom: 5),
                ),
              ),
            ),
          )
        ],
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 118,
            child: Text(
              "Addresss\nDescription",
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
                controller: TextEditingController()..text = 'Behind the white house\nnear the garbage',
                minLines: 2,
                maxLines: 5,
                style: textDefaultGrey,
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

      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 205,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/map.png"),
            fit: BoxFit.fill
          )
        ),
      ),

      Text(
        "Delete this address",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xffec5050),
          fontSize: 11,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w500,
        ),
      )


    ],
  );
}


Widget buttonUpdateAddress(BuildContext context) {
  return  Button(text: "Update", onPressed: () {

  });
}
