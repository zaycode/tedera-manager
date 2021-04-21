import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tederaadmin/screen/base_web_layout.dart';
import 'package:tederaadmin/screen/commonts/appbar_web.dart';
import 'package:tederaadmin/screen/home/home_widget.dart';

import 'package:tederaadmin/screen/home/search_widget.dart';
import 'package:tederaadmin/screen/restaurants_item.dart';
import 'package:tederaadmin/screen/widget/category_widget.dart';
import 'package:tederaadmin/screen/widget/item_store.dart';
import 'package:tederaadmin/util/style_constant.dart';

class HomeWeb extends StatefulWidget {
  @override
  _HomeWebState createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWeb(page: 0),
        body:BaseWebLayout(
          child: StaggeredGridView.countBuilder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            itemCount: restaurants.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [boxShadow]),
                child: ItemStore(item: restaurants[index]),
              );
            },
            staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
            mainAxisSpacing: 8,
            crossAxisSpacing: 20,
          ),
        ));
  }
}
