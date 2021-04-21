import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tederaadmin/screen/detail/detail.dart';
import 'package:tederaadmin/screen/rating/rating_screen.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

Widget bannerDetail() {
  return AspectRatio(
    aspectRatio: 9 / 4,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: DecorationImage(
              image: AssetImage("assets/images/thumbnail.jpg"),
              fit: BoxFit.cover)),
    ),
  );
}

Widget titleDetailWidget(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "SOGO Pizza Hut",
        style: textHeader1,
      ),
      InkWell(
        onTap: (){
          Navigator.push(
              context, MaterialPageRoute(builder: (BuildContext context) => RatingScreen()));
        },
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/svg/star.svg",
              width: kIsWeb?12.5:10,
            ),
            SizedBox(width: 4),
            Text(
              "4.7",
              style: TextStyle(
                  color: CustomColor.darkBlue,
                  fontSize: kIsWeb ? 13 : 12,
                  height: 1.2,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(width: 4),
            Text("(1256 Reviews)",
                style:
                    TextStyle(fontSize: kIsWeb ? 11 : 9, color: CustomColor.gray))
          ],
        ),
      )
    ],
  );
}

Widget workingTimeWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Working Time",
        style: TextStyle(
          color: Color(0xff222b45),
          fontSize: 13,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
        ),
      ),
      SizedBox(height: 7),
      Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Monday - Thursday:",
                style: TextStyle(
                  color: Color(0xff5b5b5b),
                  fontSize: 9,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Saturday:",
                style: TextStyle(
                  color: Color(0xff5b5b5b),
                  fontSize: 9,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Sunday:",
                style: TextStyle(
                  color: Color(0xff5b5b5b),
                  fontSize: 9,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "09:00-20:00",
                style: TextStyle(
                  color: Color(0xff5b5b5b),
                  fontSize: 9,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "09:00-20:00",
                style: TextStyle(
                  color: Color(0xff5b5b5b),
                  fontSize: 9,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "09:00-20:00",
                style: TextStyle(
                  color: Color(0xff5b5b5b),
                  fontSize: 9,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    ],
  );
}

Widget deliveryWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Delivery",
        style: TextStyle(
          color: Color(0xff222b45),
          fontSize: 13,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
        ),
      ),
      SizedBox(height: 7),
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset("assets/svg/wallet.svg",
                      width: 10, color: CustomColor.darkBlue),
                  SizedBox(width: 3),
                  Text("Minimal Order", style: TextStyle(fontSize: 10)),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  SvgPicture.asset("assets/svg/car.svg",
                      width: 10, color: CustomColor.darkBlue),
                  SizedBox(width: 3),
                  Text("Delivery Cost", style: textSmall),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/svg/clock.svg",
                    width: 10,
                    color: CustomColor.darkBlue,
                  ),
                  SizedBox(width: 3),
                  Text("Delivery Time", style: textSmall)
                ],
              ),
            ],
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "5,00€",
                style: TextStyle(
                  color: Color(0xff5b5b5b),
                  fontSize: 9,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "FREE",
                style: TextStyle(
                  color: Color(0xff5b5b5b),
                  fontSize: 9,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "30 min",
                style: TextStyle(
                  color: Color(0xff5b5b5b),
                  fontSize: 9,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    ],
  );
}

Widget contactPhone() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Contact",
        style: TextStyle(
          color: Color(0xff222b45),
          fontSize: 13,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
        ),
      ),
      SizedBox(height: 4),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints( maxWidth: !kIsWeb?173:208),
            child: Text(
              "Baustreet 25, 129983, Paris, France New York, USA",
              style: TextStyle(
                color: Color(0xff5b5b5b),
                fontSize: 10,
                height: 1.6,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(width: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset("assets/svg/chat.svg",color: CustomColor.darkBlue,),
              SizedBox(width: 31),
              SvgPicture.asset("assets/svg/phone.svg",color: CustomColor.darkBlue),
              SizedBox(width: 31),
              SvgPicture.asset("assets/svg/map.svg",color: CustomColor.darkBlue),
            ],
          ),
        ],
      ),
    ],
  );
}
