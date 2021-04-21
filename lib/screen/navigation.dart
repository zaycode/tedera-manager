import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tederaadmin/screen/cart/cart_mobile.dart';
import 'package:tederaadmin/screen/chat/chat.dart';
import 'package:tederaadmin/screen/chat/chat_mobile.dart';
import 'package:tederaadmin/screen/home/home.dart';
import 'package:tederaadmin/screen/home/home_mobile.dart';
import 'package:tederaadmin/screen/influencer/earning.dart';
import 'package:tederaadmin/screen/influencer/influencer.dart';
import 'package:tederaadmin/screen/order/order.dart';
import 'package:tederaadmin/screen/order/order_mobile.dart';
import 'package:tederaadmin/screen/profile/profile.dart';
import 'package:tederaadmin/util/cache_helper.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

class Navigation extends StatefulWidget {
  final int selectedTab;
  Navigation({this.selectedTab});
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
   PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller=PersistentTabController(initialIndex: widget.selectedTab??0);
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      hideNavigationBarWhenKeyboardShows: false,
      navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
          ? 0.0
          : kBottomNavigationBarHeight,
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true,
      confineInSafeArea: true,
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.once,
      stateManagement: true,
      decoration: NavBarDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
          )
        ],
        colorBehindNavBar: Colors.white,
      ),
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style5,
    );
  }

  List<Widget> _buildScreens() {
    return [
      SharedPrefs().getString("role")!="INFLUENCER"?Home(tabController: _controller):Influencer(),
      SharedPrefs().getString("role")!="INFLUENCER"?Order(tabController: _controller):Earning(),
      Chat(tabController: _controller),
      Profile()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            "assets/svg/home.svg",
            color: CustomColor.primary,
          ),
          inactiveIcon: SvgPicture.asset(
            "assets/svg/home.svg",
          ),
          activeColorPrimary: CustomColor.primary),

      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            "assets/svg/store.svg",
            color: CustomColor.primary,
          ),
          inactiveIcon: SvgPicture.asset("assets/svg/store.svg"),
          activeColorPrimary: CustomColor.primary),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            "assets/svg/chat.svg",
            color: CustomColor.primary,
          ),
          inactiveIcon: SvgPicture.asset("assets/svg/chat.svg"),
          activeColorPrimary: CustomColor.primary),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            "assets/svg/hamburger.svg",
            color: CustomColor.primary,
          ),
          inactiveIcon: SvgPicture.asset(
            "assets/svg/hamburger.svg",
            color: CustomColor.silver,
          ),
          activeColorPrimary: CustomColor.primary),
    ];
  }
}
