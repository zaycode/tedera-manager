import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: kIsWeb?350:double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [boxShadow],
      ),
      child: Row(
        children: [
          Flexible(
              flex: 1,
              child:Container(
                child:  TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  style: TextStyle(fontSize: kIsWeb?14:13,color: CustomColor.silver),
                  cursorColor: CustomColor.primary,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: kIsWeb?14:13,color: CustomColor.silver),
                      border: InputBorder.none,
                      hintText: "Search",
                      contentPadding: EdgeInsets.only(bottom: 17)
                  ),
                ),
              )
          ),
          SvgPicture.asset("assets/svg/search.svg")
        ],
      ),
    );
  }
}
