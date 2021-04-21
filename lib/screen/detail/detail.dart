import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tederaadmin/screen/detail/detail_mobile.dart';
import 'package:tederaadmin/screen/detail/detail_web.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(!kIsWeb){
      return DetailMobile();
    }
    return DetailWeb();
  }
}
