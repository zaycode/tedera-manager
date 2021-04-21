import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tederaadmin/util/color.dart';
var boxShadow =  BoxShadow(
  color: Color(0x23626b95),
  blurRadius: 15,
  offset: Offset(0, 2),
);

var textHeader1 = TextStyle(
  color: CustomColor.darkBlue,
  fontSize: 18,
  fontWeight: FontWeight.w700,
);
var textHeader2 = TextStyle(
  color: CustomColor.darkBlue,
  fontSize: 15,
  fontWeight: FontWeight.w700,
);
var textHeader3 = TextStyle(
  color: CustomColor.darkBlue,
  fontSize: kIsWeb?14:13,
  fontWeight: FontWeight.w600,
);
var textHeader4 = TextStyle(
  color: CustomColor.darkBlue,
  fontSize: kIsWeb?12:11,
  fontWeight: FontWeight.w600,
);
var textDefault = TextStyle(
  color: CustomColor.darkBlue,
  fontSize: kIsWeb?12:11,
  fontWeight: FontWeight.w500,
);
var textDefaultGrey = TextStyle(
  color: CustomColor.gray,
  fontSize: kIsWeb?12:11,
  fontWeight: FontWeight.w500,
);
var textDefaultRed = TextStyle(
  color: CustomColor.primary,
  fontSize: kIsWeb?12:11,
  fontWeight: FontWeight.w500,
);


var textLight = TextStyle(
  color: Color(0xff5b5b5b),
  fontSize: kIsWeb?12:11,
  fontWeight: FontWeight.w200,
);

var textSmall = TextStyle(
  color: CustomColor.darkBlue,
  fontSize: kIsWeb?10:9,
  fontWeight: FontWeight.w500,
);
var textSmallGray = TextStyle(
  color: CustomColor.darkBlue,
  fontSize: kIsWeb?10:9,
  fontWeight: FontWeight.w500,
);

var textMini = TextStyle(
  color: CustomColor.darkBlue,
  fontSize: kIsWeb?9:8,
  fontWeight: FontWeight.w500,
);

