import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'splash.dart';
import 'login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(EasyLocalization(
      child: MyApp(),
      fallbackLocale: Locale('en', 'US'),
      supportedLocales: [
        Locale('en', 'US'),
        Locale('mr', 'IN'),
        Locale('hi', 'IN')
      ],
      path: 'assets/translations'));
}

var routes = <String, WidgetBuilder>{
  "/LoginPage": (BuildContext context) => LoginPage(),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BOP',
      debugShowCheckedModeBanner: false,
      home: SplashS(),
      routes: routes,
      supportedLocales: [
        Locale('en', 'US'),
        Locale('mr', 'IN'),
        Locale('hi', 'IN')
      ],
      localizationsDelegates: context.localizationDelegates,
    );
  }
}
