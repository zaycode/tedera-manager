import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tederaadmin/screen/base_web_layout.dart';
import 'package:tederaadmin/screen/commonts/appbar_web.dart';
import 'package:tederaadmin/screen/order/order_widget.dart';
import 'package:tederaadmin/screen/widget/base_bottom_sheet.dart';
import 'package:tederaadmin/screen/widget/dash.dart';
import 'package:tederaadmin/util/cache_helper.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';
import 'package:timelines/timelines.dart';

class OrderDetailWeb extends StatefulWidget {
  @override
  _OrderDetailWebState createState() => _OrderDetailWebState();
}

class _OrderDetailWebState extends State<OrderDetailWeb> {
  var status = "Placed";
  var role;

  @override
  void initState() {
    super.initState();
    role = SharedPrefs().getString("role");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWeb(page: 2),
      body: BaseWebLayout(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 400,
                child: Column(
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
                                    image: AssetImage(
                                        "assets/images/thumbnail.jpg"),
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
                                    image: AssetImage(
                                        "assets/images/thumbnail.jpg"),
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
                    status != "Placed"
                        ? Column(children: [
                            role == "MANAGER"
                                ? Container(
                                    margin: EdgeInsets.only(top: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        status != "Block" && status != "Cancel"
                                            ? InkWell(
                                                onTap: () {
                                                  showMaterialModalBottomSheet(
                                                      context: context,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      builder: (context) =>
                                                          BaseBottomSheet(
                                                              child:
                                                                  cancelDialog(
                                                                      context,
                                                                      "Block")));
                                                  setState(() {
                                                    status = "Block";
                                                    deliveryProcess
                                                        .asMap()
                                                        .forEach((i, value) {
                                                      if (i > 0) {
                                                        deliveryProcess[i]
                                                            .status = false;
                                                      }
                                                    });
                                                  });
                                                },
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.close,
                                                      size: 10,
                                                      color:
                                                          CustomColor.primary,
                                                    ),
                                                    SizedBox(width: 4),
                                                    Text(
                                                      "Block User",
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xfffa0000),
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            : Container(),
                                        status == "Block" || status == "Cancel"
                                            ? Text(
                                                status == "Block"
                                                    ? "Block User"
                                                    : "Order Canceled",
                                                textAlign: TextAlign.right,
                                                style: textDefault)
                                            : Container()
                                      ],
                                    ),
                                  )
                                : Container(),
                            status != "Cancel" ? contactOrder() : Container(),
                          ])
                        : Container(),
                    status == "Placed"
                        ? Container(
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    showMaterialModalBottomSheet(
                                        context: context,
                                        backgroundColor: Colors.transparent,
                                        builder: (context) => BaseBottomSheet(
                                            child: cancelDialog(
                                                context, "Cancel")));
                                    setState(() {
                                      status = "Cancel";
                                      deliveryProcess
                                          .asMap()
                                          .forEach((i, value) {
                                        if (i > 0) {
                                          deliveryProcess[i].status = false;
                                        }
                                      });
                                    });
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      width: 150,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          color: Color(0xffec5050),
                                          width: 1,
                                        ),
                                      ),
                                      child: Text(
                                        "Decline",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xffec5050),
                                          fontSize: 11,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (role == "DRIVER") {
                                        deliveryProcess[1].status = true;
                                        deliveryProcess[2].status = true;
                                        status = "Prepared";
                                      } else {
                                        deliveryProcess[1].status = true;
                                        status = "Accepted";
                                      }
                                    });
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      width: 150,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: CustomColor.primary),
                                      child: Text(
                                        "Accept Order",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ],
                )),
            Container(
              width: 400,
              child: status != "Placed"
                  ? Column(
                      children: [
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
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 100,
                                        child: Text(
                                          deliveryProcess[index].title,
                                          style: status != "Cancel" ||
                                                  status != "Block"
                                              ? textDefault
                                              : textDefault.copyWith(
                                                  color: CustomColor.silver),
                                        ),
                                      ),
                                      index != 0 &&
                                              deliveryProcess[index - 1]
                                                      .title ==
                                                  status &&
                                              status != "Cancel"
                                          ? Container(
                                              width: 100,
                                              child: Center(
                                                child: InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      status =
                                                          deliveryProcess[index]
                                                              .title;
                                                      deliveryProcess[index]
                                                          .status = true;
                                                    });
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color:
                                                          CustomColor.primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: Text(
                                                      deliveryProcess[index]
                                                          .title,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 6,
                                                            horizontal: 12),
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Container(),
                                      Container(
                                        width: 100,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              deliveryProcess[index].time,
                                              style: TextStyle(
                                                color: index == 0 ||
                                                        index ==
                                                            deliveryProcess
                                                                    .length -
                                                                1
                                                    ? CustomColor.darkBlue
                                                    : CustomColor.silverDark,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
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
                                      color: !deliveryProcess.last.status
                                          ? CustomColor.silver
                                          : CustomColor.primary,
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
                                            borderRadius:
                                                BorderRadius.circular(10)),
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
                                      decoration: BoxDecoration(
                                          color: CustomColor.primary),
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
                        role == "MANAGER"
                            ? assignmentWidget(context)
                            : Container(),
                        role == "MANAGER" && status!="Cancel" && status!="Block"
                            ? ListView.builder(
                                shrinkWrap: true,
                                itemCount: 2,
                                physics: NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.symmetric(),
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.only(bottom: 10,top: 20),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [boxShadow]),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(bottom: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Restaurant Rating",
                                                  style: textHeader3),
                                              Text("12.03.2021",
                                                  style: textSmallGray)
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Rating :",
                                                style: TextStyle(
                                                  color: Color(0xff5b5b5b),
                                                  fontSize: 11,
                                                  fontFamily: "Montserrat",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              SvgPicture.asset(
                                                "assets/svg/star.svg",
                                                color: CustomColor.amber,
                                                width: 13,
                                              ),
                                              SizedBox(width: 2),
                                              SvgPicture.asset(
                                                "assets/svg/star.svg",
                                                color: CustomColor.amber,
                                                width: 13,
                                              ),
                                              SizedBox(width: 2),
                                              SvgPicture.asset(
                                                "assets/svg/star.svg",
                                                color: CustomColor.amber,
                                                width: 13,
                                              ),
                                              SizedBox(width: 2),
                                              SvgPicture.asset(
                                                "assets/svg/star.svg",
                                                color: CustomColor.amber,
                                                width: 13,
                                              ),
                                              SizedBox(width: 2),
                                              SvgPicture.asset(
                                                "assets/svg/star.svg",
                                                width: 13,
                                                color: CustomColor.silver,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "I love their Salad items. Also love their Sushi items! Extraordinary. An elite standard by which you judge rest of the restaurants. Staff always ready to help, extreme cleanliness, posh atmosphere and delicious food with perfect delivery.",
                                          style: TextStyle(
                                            color: Color(0xff5b5b5b),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w200,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                })
                            : Container()
                      ],
                    )
                  : Container(),
            )
          ],
        ),
      ),
    );
  }
}
