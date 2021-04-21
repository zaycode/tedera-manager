import 'package:flutter/material.dart';
import 'package:tederaadmin/util/color.dart';

class Button extends StatelessWidget {
  final String text;
  final EdgeInsets padding;
  final GestureTapCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;
  Button({this.text,this.onPressed,this.padding,this.fontSize,this.fontWeight});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: CustomColor.primary,
        ),
        padding: padding??EdgeInsets.symmetric(horizontal: 30, vertical: 12 ),
        child:  Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize??15,
            fontWeight: fontWeight??FontWeight.w600,
          ),
        ),
      ),
      onTap: onPressed,
    );
  }
}
