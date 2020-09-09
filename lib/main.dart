import 'package:flutter/material.dart';

import 'package:flutterauthapp/screens/splash/splashscreen.dart';
import 'package:flutterauthapp/routes.dart';
import 'package:flutterauthapp/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
      // home: SplashScreen(),
      // home: LoginScreen(),
    );
  }
}
