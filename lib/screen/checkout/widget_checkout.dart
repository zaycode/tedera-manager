import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tederaadmin/util/button.dart';
import 'package:tederaadmin/util/style_constant.dart';

List<String> dataCheckOut=[
  "Home Delivery (Cash Payment)",
  "Pickup",
  "Local",
];

Widget itemCheckout(String title,int index) {
  return Container(
    height: 57,
    margin: EdgeInsets.only(bottom: 10),
    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          boxShadow
        ]
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
           title,
            style: textHeader3),
        index==0?SvgPicture.asset("assets/svg/checked.svg",width: 20,):Container()
      ],
    ),
  );
}


Widget deliveryAddress(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "DELIVERY ADDRESS",
        style: textDefault
      ),
      SizedBox(height: 8),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Row(
           children: [
             SvgPicture.asset("assets/svg/location.svg",height: 11,),
             SizedBox(width: 4),
             Text(
               "Bla Bla Street, ney york Los Angeles",
               style: textDefaultGrey
             ),
           ],
         ),
          Text(
            "Change",
            style: textDefaultRed
          )
        ],
      ),

    ],
  );
}


Widget summaryCheckout(BuildContext context){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Subtotal",
            style: textDefaultGrey
          ),
          Text(
            "12,95 €",
            textAlign: TextAlign.right,
            style: textDefaultGrey
          ),
        ],
      ),
      SizedBox(height: 7),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Delivery Fee",
            style: textDefaultGrey
          ),
          Text(
            "Free",
            textAlign: TextAlign.right,
            style: textDefaultGrey
          ),
        ],
      ),
      SizedBox(height: 7),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Sale",
            style: textDefaultGrey
          ),
          Text("-1,00 €",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xff7fb63a),
                fontSize: 11,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
              ))
        ],
      ),
      SizedBox(height: 7),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Total",
            style: textHeader3
          ),
          Text("12,95 €",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xffec5050),
                fontSize: 15,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700,
              ))
        ],
      ),
      SizedBox(
        height: 16,
      ),
    ],
  );
}

Widget informationCheckout(){
  return Text(
    "Some information text here about delivery, pickup, cash etc. which will be more than 5 rows or meybe one more.\n\nThen some text aoub Terms and Conditions which will be linked to the HTML page.",
    style: textLight,
  );
}