import 'package:flutter/material.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

class ItemNotification extends StatelessWidget {
  final int index;
  ItemNotification(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            boxShadow
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "Your order 234889 has been accepted",
              style: TextStyle(
                color: CustomColor.darkBlue,
                fontSize: 11,
                fontWeight: index<4?FontWeight.w600:FontWeight.w500,
              )),
          SizedBox(height: 4,),
          Text(
              "12.02.2002 - 15:22",
              style: textSmall
          ),
        ],
      ),
    );
  }
}
