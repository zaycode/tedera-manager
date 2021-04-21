import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tederaadmin/screen/chat/chat.dart';
import 'package:tederaadmin/screen/home/home.dart';
import 'package:tederaadmin/screen/home/home_web.dart';
import 'package:tederaadmin/screen/influencer/earning.dart';
import 'package:tederaadmin/screen/influencer/influencer.dart';

import 'package:tederaadmin/screen/notification/item_notification.dart';
import 'package:tederaadmin/screen/order/order.dart';
import 'package:tederaadmin/screen/widget/menu.dart';
import 'package:tederaadmin/util/cache_helper.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/popup_menu.dart';
import 'package:tederaadmin/util/style_constant.dart';

class AppbarWeb extends StatefulWidget implements PreferredSizeWidget {
  final int page;
  AppbarWeb({this.page});
  @override
  _AppbarWebState createState() => _AppbarWebState();

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}

class _AppbarWebState extends State<AppbarWeb> {
  String role;
  @override
  void initState() {
    super.initState();
    role= SharedPrefs().getString("role");
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            width: 900,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/logo.svg",
                  height: 18,
                ),
                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            icon: SvgPicture.asset("assets/svg/home.svg",color: widget.page==0? CustomColor.primary:CustomColor.silver,),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => role!="INFLUENCER"?Home():Influencer()));
                            }),
                        SizedBox(width:14 ),

                        IconButton(
                            icon: SvgPicture.asset("assets/svg/store.svg",color: widget.page==2? CustomColor.primary:CustomColor.silver),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => role!="INFLUENCER"?Order():Earning()));
                            }),
                        SizedBox(width:14 ),
                        IconButton(
                            icon: SvgPicture.asset("assets/svg/chat.svg"),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Chat()));
                            }),
                        SizedBox(width:14 ),
                        CustomPopupMenu(
                          arrowColor: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Stack(
                              children: [
                                SvgPicture.asset("assets/svg/notification.svg"),
                                Positioned(
                                  right: 0,
                                  child: Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                        color: CustomColor.primary,
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                )
                              ],
                            ),
                          ),
                          menuBuilder: () => Container(
                            child: IntrinsicWidth(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          boxShadow
                                        ]
                                    ),
                                    width: 255,
                                    child: ListView.builder(
                                        padding: EdgeInsets.all(12),
                                        shrinkWrap: true,
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          return ItemNotification(index);
                                        }),
                                  ),
                                )),
                          ),
                          verticalMargin: -5,
                          pressType: PressType.singleClick,
                        ),
                        SizedBox(width:14 ),
                        CustomPopupMenu(
                          child: Container(
                              padding: EdgeInsets.all(8),
                              child: SvgPicture.asset("assets/svg/hamburger.svg")),
                          menuBuilder: () => Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [boxShadow]),
                              width: 255,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                child: MenuWidget(),
                              )
                          ),
                          pressType: PressType.singleClick,
                          verticalMargin: -1,
                          arrowColor: null,
                        ),
                      ],
                    ))
              ],
            ),
          ),

        ],
      ),
    );
  }
}
