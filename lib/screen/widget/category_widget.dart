import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tederaadmin/util/color.dart';

class CategoryWidget extends StatefulWidget {
  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  var activeCategoryWidget = "All";
  List<String> categories = [
    "All",
    "Coffe",
    "Drink",
    "Fast Food",
    "Cake",
    "Vegge",
    "Lombang",
    "Dancuk"
  ];

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 24,
      child: ListView.builder(
          itemCount: categories.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(0),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              child: Container(
                height: 24,
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: activeCategoryWidget == categories[index]
                        ? CustomColor.primary
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: Text(categories[index],
                      style: TextStyle(
                          fontSize: kIsWeb?12:11,
                          height: 1.4,
                          fontWeight: FontWeight.w500,
                          color: activeCategoryWidget == categories[index]
                              ? Colors.white
                              : CustomColor.gray)),
                ),
              ),
              onTap: () => {
                setState(() {
                  activeCategoryWidget = categories[index];
                })
              },
            );
          }),
    );
  }
}
