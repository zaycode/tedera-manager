import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tederaadmin/screen/address/address_mobile.dart';
import 'package:tederaadmin/screen/address/address_web.dart';
import 'package:tederaadmin/screen/auth/register.dart';
import 'package:tederaadmin/screen/base_web_layout.dart';
import 'package:tederaadmin/screen/commonts/appbar_mobile.dart';
import 'package:tederaadmin/screen/commonts/appbar_web.dart';
import 'package:tederaadmin/screen/navigation.dart';
import 'package:tederaadmin/util/button.dart';
import 'package:tederaadmin/util/color.dart';
import 'package:tederaadmin/util/style_constant.dart';

class Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return AddressMobile();
    }
    return AddressWeb();
  }

}
