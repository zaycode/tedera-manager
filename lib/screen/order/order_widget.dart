import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tederaadmin/screen/order/order_detail.dart';
import 'package:tederaadmin/screen/order/order_detail_mobile.dart';
import 'package:tederaadmin/screen/widget/base_bottom_sheet.dart';
import 'package:tederaadmin/screen/widget/dash.dart';
import 'package:tederaadmin/util/button.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';
import 'package:timelines/timelines.dart';
import 'delivery_model.dart';

List<String> statusListManager = [
  "Placed",
  "Accepted",
  "Prepared",
  "On The Way",
  "Delivered",
  "Canceled",
  "Delivered",
];

List<String> statusListCookDriver = [
  "Placed",
  "New",
  "Accepted",
  "Accepted",
  "Delivered",
  "Delivered",
  "Accepted",
];


List<DeliveryModel> deliveryProcess = [
  DeliveryModel(title: "Placed", time: "9:15 AM", status: true),
  DeliveryModel(title: "Accepted", time: "9:15 AM", status: false),
  DeliveryModel(title: "Prepared", time: "9:20 AM", status: false),
  DeliveryModel(title: "On the Way", time: "      ", status: false),
  DeliveryModel(title: "Delivered", time: "About 5:35", status: false),
];

Widget itemOrderManager(context, String status) {
  return InkWell(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => OrderDetail()));
    },
    child: Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [boxShadow],
        color: Colors.white,
      ),
      padding:  EdgeInsets.only(
        left: 12,
        right: 12,
        top: 11,
        bottom: 11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Kichi Coffee & Drink", style: textHeader3),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("12.02.2022", style: textDefaultGrey),
                  Text(" - Delivery",
                      style:
                      textDefaultGrey.copyWith(fontWeight: FontWeight.w700))
                ],
              ),
            ],
          ),
          status=="Placed"?Text(
            "4:59",
            style:  textHeader3.copyWith(color: CustomColor.primary),
          ):Container(),
          Text(
            status.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color:
              status == "Placed" ? CustomColor.yellowGold :
              status == "Accepted"? CustomColor.blue:
              status == "Delivered"? CustomColor.green:
              status == "Prepared"? CustomColor.amber:
              status == "On the Way"? CustomColor.purple:CustomColor.silver,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget itemOrderDriverCook(context, String status) {
  return InkWell(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => OrderDetail()));
    },
    child: Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [boxShadow],
        color: Colors.white,
      ),
      padding:  EdgeInsets.only(
        left: 12,
        right: 12,
        top: 11,
        bottom: 11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Kichi Coffee & Drink", style: textHeader3),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text("12.02.2022", style: textDefaultGrey),
                    Text(" - Delivery",
                        style:
                        textDefaultGrey.copyWith(fontWeight: FontWeight.w700))
                  ],
                ),
              ],
            ),
          ),
          status=="Placed"?Text(
            "4:59",
            style:  textHeader3.copyWith(color: CustomColor.primary),
          ):Container(),

          Container(
            width: 100,
            alignment: Alignment.centerRight,
            child: Text(
              status.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color:
                status == "New" ? CustomColor.primary :
                status == "Accepted"? CustomColor.green:
                CustomColor.silver,
                fontSize: 11,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget orderDetailInfoWidget(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(bottom: 21),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Kichi Coffee & Drink", style: textHeader3),
                Container(
                  margin: EdgeInsets.only(top: 7),
                  child: Row(
                    children: [
                      Text(
                        "12.02.2022",
                        style: TextStyle(
                          color: Color(0xff5b5b5b),
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        " - Delivery",
                        style: TextStyle(
                          color: Color(0xff222b45),
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text("Order ID: 2BS9FD2", style: textHeader3),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                      image: AssetImage("assets/images/thumbnail.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(width: 10),
            Expanded(
                child: Text(
              "Kichi Coffee & Drink",
              style: TextStyle(
                color: Color(0xff222b45),
                fontSize: 13,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            )),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "6,95 €",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xff5b5b5b),
                    fontSize: 11,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  "x 1",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xff5b5b5b),
                    fontSize: 9,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                      image: AssetImage("assets/images/thumbnail.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(width: 10),
            Expanded(
                child: Text(
              "Kichi Coffee & Drink",
              style: TextStyle(
                color: Color(0xff222b45),
                fontSize: 13,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            )),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "6,95 €",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xff5b5b5b),
                    fontSize: 11,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  "x 1",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xff5b5b5b),
                    fontSize: 9,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Delivery:",
              style: TextStyle(
                color: Color(0xff222b45),
                fontSize: 13,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "FREE",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xff5b5b5b),
                fontSize: 11,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Coupon:",
              style: TextStyle(
                color: Color(0xff222b45),
                fontSize: 13,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "2,95 €",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xff69b53b),
                fontSize: 10,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total:",
              style: TextStyle(
                color: Color(0xff222b45),
                fontSize: 13,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "-2,95 €",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xffec5050),
                fontSize: 13,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
      Divider(height: 0.5),

    ],
  );
}

Widget contactOrder() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20),

    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(width: 1,color: Color(0xFFF2F2F2)))
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Luna Mala",
          style: textHeader3,
        ),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints( maxWidth: 173),
              child: Text(
                "Baustreet 25, 129983, Paris, France New York, USA",
                style: TextStyle(
                  color: Color(0xff5b5b5b),
                  fontSize: 10,
                  height: 1.6,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(width: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/svg/chat.svg",color: CustomColor.darkBlue,),
                SizedBox(width: 31),
                SvgPicture.asset("assets/svg/phone.svg",color: CustomColor.darkBlue),
                SizedBox(width: 31),
                SvgPicture.asset("assets/svg/map.svg",color: CustomColor.darkBlue),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget orderDetailTrackingWidget(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "TRACK ORDER",
        style: textHeader3,
      ),
      FixedTimeline.tileBuilder(
        theme: TimelineThemeData(
          nodePosition: 0,
          indicatorTheme: IndicatorThemeData(
            size: 16.0,
          ),
          connectorTheme: ConnectorThemeData(
            thickness: 2,
          ),
        ),
        builder: TimelineTileBuilder.connected(
            connectionDirection: ConnectionDirection.before,
            itemCount: deliveryProcess.length,
            contentsBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      deliveryProcess[index].title,
                      style: textDefault,
                    ),
                    Text(
                      deliveryProcess[index].time,
                      style: textDefault,
                    ),
                  ],
                ),
              );
            },
            indicatorBuilder: (context, index) {
              if (index == (deliveryProcess.length - 1)) {
                return Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CustomColor.silver,
                  ),
                  child: Center(
                      child: Icon(
                    Icons.flag,
                    color: Colors.white,
                    size: 12,
                  )),
                );
              }
              if (deliveryProcess[index].status) {
                return Container(
                  width: 20,
                  height: 20,
                  child: Center(
                      child: SvgPicture.asset(
                    "assets/svg/option_checked_solid.svg",
                    color: CustomColor.primary,
                  )),
                );
              } else {
                return Container(
                  width: 20,
                  height: 20,
                  child: Center(
                    child: Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                          color: CustomColor.silver,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                );
              }
            },
            connectorBuilder: (context, index, type) {
              if (deliveryProcess[index].status) {
                return SizedBox(
                  height: 25,
                  child: DecoratedLineConnector(
                    decoration: BoxDecoration(color: CustomColor.primary),
                  ),
                );
              } else {
                return Dash(
                    direction: Axis.vertical,
                    length: 25,
                    dashThickness: 2,
                    dashColor: CustomColor.silver);
              }
            }),
      ),
    ],
  );
}


Widget assignmentWidget(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 20),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cook: No assignment",
              style: TextStyle(
                color: Color(0xff5b5b5b),
                fontSize: 10,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Driver: No assignment",
              style: TextStyle(
                color: Color(0xff5b5b5b),
                fontSize: 10,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
              ),
            ),

          ],
        ),
        InkWell(
          onTap: (){
            showMaterialModalBottomSheet(
                context: context,
                backgroundColor: Colors.transparent,
                builder: (context) => BaseBottomSheet(child:assignmentDialog(context)));
          },
          child: Container(
            width: 149,
            height: 35,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Color(0xfff1f1f1),
                width: 1,
              ),
            ),
            child: Text("Assign",
                textAlign: TextAlign.center, style: textHeader4),
          ),
        ),
      ],
    ),
  );
}

Widget assignmentDialog(BuildContext context){
  return Container(
    width: double.infinity,
    child: Column(
      children: [
        Text(
          "Assignment",
          textAlign: TextAlign.center,
          style: textHeader1,
        ),

        Container(
          width: 264,
          height: 40,
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xfffbfbfb),
              boxShadow: [ BoxShadow(
                color: Color(0x23626b95),
                blurRadius: 15,
                offset: Offset(0, 2),
              ),],
          ),
          padding:  EdgeInsets.all(11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Text(
                "Assign Cook",
                style: textDefaultGrey,
              ),
              Icon(CupertinoIcons.chevron_down,size: 14, color: CustomColor.silver,)
            ],
          ),
        ),
        Container(
          width: 264,
          height: 40,
          margin: EdgeInsets.only(top: 20,bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xfffbfbfb),
              boxShadow: [
                BoxShadow(
                  color: Color(0x23626b95),
                  blurRadius: 15,
                  offset: Offset(0, 2),
                ),
              ],
          ),
          padding:  EdgeInsets.all(11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Text(
                "Assign Driver",
                style: textDefaultGrey,
              ),
              Icon(CupertinoIcons.chevron_down,size: 14, color: CustomColor.silver,)
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.symmetric(vertical: 24),
          child: Center(
            child: Button(
              text: "Update",
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
        )
      ],
    ),
  );
}
Widget cancelDialog(BuildContext context, String type){
  return Column(
    children: [
      Text(
        type=="Cancel"?"Cancel Order":"Block User",
        textAlign: TextAlign.center,
        style: textHeader1
      ),
      SizedBox(height: 10),
      Text(
        type=="Cancel"?"Please write in the commet below why you are not delivering this order so the customer is informed about. Be as reasnoable and as polite as possible so you won’t get a negative feedback from the customer.":
        "Blocking a user will automaticlly cancel the order. You will never be able to get orders from this customer again. ite a reason below why you are blocking this customer so the admin can take a deeper look.",
        style: TextStyle(
          color: Color(0xff5b5b5b),
          fontSize: 11,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height: 20),
      Container(
        height: 79.46,
        padding: EdgeInsets.symmetric(horizontal: 11),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xfff7f9fc),
        ),
        child: TextField(
          keyboardType: TextInputType.multiline,
          minLines: 1,
          //Normal textInputField will be displayed
          maxLines: 5,
          style: textDefaultGrey,
          decoration: InputDecoration(
              isDense: false,
              border: InputBorder.none,
              hintText: type=="Cancel"?"Write the reason why you are canceling this order?":"Write the reason why you are blocking this user?",
              contentPadding: EdgeInsets.only(bottom: 17)),
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        child: Text(
          type=="Cancel"?"Are you sure you want to cancel this order?":"Are you sure you want to block this user?",
          textAlign: TextAlign.center,
          style: textDefaultGrey
        ),
      ),

      Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Button(
          text: type=="Cancel"?"Cancel Order":"Block User",
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      )
    ],
  );
}
