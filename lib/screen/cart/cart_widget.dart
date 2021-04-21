import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tederaadmin/screen/cart/cart.dart';
import 'package:tederaadmin/screen/cart/cart_mobile.dart';
import 'package:tederaadmin/screen/checkout/checkout.dart';
import 'package:tederaadmin/screen/checkout/checkout_mobile.dart';
import 'package:tederaadmin/util/button.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

Widget emptyCart() {
  return Center(
      child: Text(
    "Your shopping cart is empty. You can add items\n"
    "from one Restaurant only.\n\n"
    "If you want to order from more restaurant, you\n"
    "have to buy seperatly.",
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Color(0xffd1d3d6),
      fontSize: 11,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
    ),
  ));
}

Widget itemCart() {
  return Container(
      height: 98,
      padding: EdgeInsets.symmetric(vertical: 11),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                margin: EdgeInsets.only(right: 10),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: CustomColor.primary,
                ),
                child: Text(
                  "1",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                width: 85,
                height: 85,
                margin: EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                        image: AssetImage("assets/images/thumbnail.jpg"),
                        fit: BoxFit.cover)),
              )
            ],
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Pizza Margharita", style: textHeader3),
                SizedBox(height: 4),
                Text("Small Pizza 30cm", style: textDefault)
              ],
            ),
          ),
          SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "12,95 €",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: CustomColor.primary,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              InkWell(
                child: SvgPicture.asset("assets/svg/remove.svg"),
                onTap: () {},
              )
            ],
          ),
        ],
      ));
}

List<String> listTypeSizeFood = [
  "Small Pizza 30cm",
  "Normal Pizza 40cm",
  "Large Pizza 50cm"
];

Widget contentAddCartDialog(BuildContext context) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 85,
              height: 85,
              margin: EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                      image: AssetImage("assets/images/thumbnail.jpg"),
                      fit: BoxFit.cover)),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Pizza Margharita", style: textHeader3),
                  SizedBox(height: 4),
                  Text(
                      "Tomatosauce and Guada, Cheese ketchup and maccaroni. with Tomatosauce and Guada, Cheese ketchup.",
                      style: textDefaultGrey)
                ],
              ),
            ),
            SizedBox(width: 30),
          ],
        ),
        SizedBox(height: 16),
        Text(
          "Option",
          style: TextStyle(
            color: Colors.black,
            fontSize: 13,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
          ),
        ),
        ListView.builder(
            itemCount: listTypeSizeFood.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(top: 8),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(index == 0
                                ? "assets/svg/option_checked.svg"
                                : "assets/svg/option-unchecked.svg"),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            listTypeSizeFood[index],
                            style: TextStyle(
                              color: Color(0xff5b5b5b),
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 26,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfffafafa),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "-",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff7e8389),
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            "1",
                            style: TextStyle(
                              color: Color(0xff414141),
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            "+",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff7e8389),
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "5,95 €",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xffec5050),
                          fontSize: 13,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
        SizedBox(height: 8),
        Text(
          "Extra",
          style: TextStyle(
            color: Colors.black,
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
        ListView.builder(
            itemCount: listTypeSizeFood.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 8),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.only(bottom: 8),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            SvgPicture.asset(index == 0
                                ? "assets/svg/checkbox-checked.svg"
                                : "assets/svg/checkbox-unchecked.svg"),
                            SizedBox(width: 11),
                            Text(
                              listTypeSizeFood[index],
                              style: textDefault,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "5,95 €",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xffec5050),
                          fontSize: 13,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ));
            }),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total",
                style: TextStyle(
                  color: Color(0xff222b45),
                  fontSize: 15,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700,
                )),
            Text(
              "12,95 €",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xffec5050),
                fontSize: 15,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Center(
          child: Button(
            text: "Add to Cart",
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) => Cart()));
            },
          ),
        )
      ],
    ),
  );
}

Widget listCart() {
  return ListView.separated(
    padding: EdgeInsets.only(bottom: 50),
    separatorBuilder: (context, index) {
      return Divider(
        height: 0.5,
        color: Color(0xfff1f1f1),
      );
    },
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: 3,
    itemBuilder: (BuildContext context, int index) => itemCart(),
  );
}

Widget cartCount(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: Color(0xfff1f1f1),
            width: 1,
          ),
          color: Colors.white,
        ),
        padding: const EdgeInsets.only(
          left: 10,
          right: 13,
          top: 13,
          bottom: 12,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: Text(
                  "Do you have a Coupon Code?",
                  style: TextStyle(
                    color: Color(0xff5b5b5b),
                    fontSize: 11,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                )),
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.white,
                    content: Text(
                      "Coupon added sucessfully!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: CustomColor.green,
                        fontSize: 11,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    )));
              },
              child: Text(
                "Add",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xffec5050),
                  fontSize: 10,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Subtotal",
            style: TextStyle(
              color: Color(0xff5b5b5b),
              fontSize: 11,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "12,95 €",
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xff5b5b5b),
              fontSize: 11,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      SizedBox(height: 7),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Delivery Fee",
            style: TextStyle(
              color: Color(0xff5b5b5b),
              fontSize: 11,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Free",
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xff5b5b5b),
              fontSize: 11,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      SizedBox(height: 7),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Sale",
            style: TextStyle(
              color: Color(0xff5b5b5b),
              fontSize: 11,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
            ),
          ),
          Text("-1,00 €",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xff7fb63a),
                fontSize: 11,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
              ))
        ],
      ),
      SizedBox(height: 7),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Total",
            style: TextStyle(
              color: Color(0xff222b45),
              fontSize: 13,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
            ),
          ),
          Text("12,95 €",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xffec5050),
                fontSize: 15,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700,
              ))
        ],
      ),
      SizedBox(
        height: 16,
      ),
      Row(
        mainAxisAlignment:
            kIsWeb ? MainAxisAlignment.end : MainAxisAlignment.center,
        children: [
          Button(
            text: "Continue to Checkout",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Checkout()));
            },
          ),
        ],
      ),
    ],
  );
}
