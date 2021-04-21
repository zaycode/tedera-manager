import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tederaadmin/screen/base_web_layout.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/screen/commonts/appbar_web.dart';
import 'package:tederaadmin/screen/restaurants_item.dart';
import 'package:tederaadmin/screen/widget/item_store.dart';
import 'package:tederaadmin/util/style_constant.dart';

class Favorite extends StatelessWidget {
  List<RestaurantItem> restaurants = [
    RestaurantItem(favorite: true, cost: 25),
    RestaurantItem(favorite: true, cost: 0),
    RestaurantItem(favorite: true, cost: 20),
    RestaurantItem(favorite: true, cost: 80),
    RestaurantItem(favorite: true, cost: 0),
    RestaurantItem(favorite: true, cost: 30),
    RestaurantItem(favorite: true, cost: 50),
    RestaurantItem(favorite: true, cost: 50),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kIsWeb?AppbarWeb():AppBarMobile(
        title: "Favorites",
      ),
      body: kIsWeb?website():mobile(),
    );
  }
  
  Widget mobile(){
    return ListView.builder(
        itemCount: restaurants.length,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [boxShadow]),
            child: ItemStore(item: restaurants[index]),
          );
        });
  }
  
  Widget website(){
    return BaseWebLayout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Favorites",style: textHeader1),
          SizedBox(height: 16),
          StaggeredGridView.countBuilder(
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
            staggeredTileBuilder: (int index) =>
                StaggeredTile.fit(1),
            mainAxisSpacing: 8,
            crossAxisSpacing: 20,
          ),
        ],
      ),
    );
  }
}
