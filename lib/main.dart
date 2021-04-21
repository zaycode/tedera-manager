import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tederaadmin/screen/RoleScreen.dart';
import 'package:tederaadmin/screen/auth/login.dart';
import 'package:tederaadmin/screen/auth/register.dart';
import 'package:tederaadmin/screen/home/home_web.dart';
import 'package:tederaadmin/screen/spalash_screen.dart';
import 'package:tederaadmin/util/cache_helper.dart';
import 'package:tederaadmin/util/theme_provider.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value) => runApp(MyApp()));
  SharedPrefs().init();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: CustomTheme.lightTheme,
      home: kIsWeb?RoleScreen():SplashScreen(),
    );
  }
}
