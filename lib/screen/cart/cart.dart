import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tederaadmin/screen/cart/cart_mobile.dart';
import 'package:tederaadmin/screen/cart/cart_web.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(!kIsWeb){
      return CartMobile();
    }
    return CartWeb();
  }
}
