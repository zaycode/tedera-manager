import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/screen/commonts/appbar_web.dart';
import 'package:tederaadmin/screen/widget/base_bottom_sheet.dart';
import 'package:tederaadmin/util/button.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

import '../base_web_layout.dart';

class Otp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBarMobile(
            title: "Profile",
          ),
          body: SingleChildScrollView(
            child: Center(
              child:otpWidget(context),

            ),
          ));
    }

  }


}
Widget otpWidget(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(height: 160),
      Text(
        "To activate your new number, you need\nto verify within 5 minutes by typing the 6-PIN\nnumber below.\nYou will get this number via SMS:",
        textAlign: TextAlign.center,
        style: textLight,
      ),
      SizedBox(
        height: 36,
      ),
      Container(
        width: 182,
        child: PinCodeTextField(
          length: 4,
          obscureText: false,
          animationType: AnimationType.fade,
          pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(10),
              fieldHeight: 52,
              fieldWidth: 38,
              activeColor:Colors.white,
              selectedFillColor:Colors.white,
              activeFillColor:Colors.white,
              inactiveFillColor:Colors.white ,
              inactiveColor: Colors.white,
              selectedColor: Colors.white),
          onCompleted: (v) {
            print("Completed");
          },
          autoFocus:true,
          onChanged: (value) {},
          beforeTextPaste: (text) {
            print("Allowing to paste $text");
            //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
            //but you can show anything you want here, like your pop up saying wrong paste format or etc
            return true;
          },
          enableActiveFill: true,
          keyboardType: TextInputType.number,
          backgroundColor: Colors.white,
          boxShadows: [
            boxShadow
          ],
          textStyle: TextStyle(
            color: CustomColor.darkBlue,
            fontSize: 30,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
          ),
          cursorColor:CustomColor.primary,
          appContext: context,
        ),
      )
    ],
  );
}

Widget otpWidgetWeb(BuildContext context) {
  return Container(
    child: ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Column(
          children: [
            Text(
              "To activate your new number, you need\nto verify within 5 minutes by typing the 6-PIN\nnumber below.\nYou will get this number via SMS:",
              textAlign: TextAlign.center,
              style: textLight,
            ),
            SizedBox(
              height: 36,
            ),
            Container(
              width: 182,
              child: PinCodeTextField(
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 52,
                    fieldWidth: 38,
                    activeColor:Colors.white,
                    selectedFillColor:Colors.white,
                    activeFillColor:Colors.white,
                    inactiveFillColor:Colors.white ,
                    inactiveColor: Colors.white,
                    selectedColor: Colors.white),
                onCompleted: (v) {
                  print("Completed");
                },
                  autoFocus:true,
                onChanged: (value) {},
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
                enableActiveFill: true,
                keyboardType: TextInputType.number,
                backgroundColor: Colors.white,
                boxShadows: [
                  boxShadow
                ],
                textStyle: TextStyle(
                  color: CustomColor.darkBlue,
                  fontSize: 30,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                ),
                cursorColor:CustomColor.primary,
                appContext: context,
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Button(
              text: "Submit",
            ),
            SizedBox(
              height: 36,
            ),
          ],
        )
      ],
    ),
  );
}

void showOTP(BuildContext context){
  if(kIsWeb){
    showMaterialModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) =>
            BaseBottomSheet(child:otpWidgetWeb(context),isCartShow:false));
  }else{
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Otp()));
  }
}