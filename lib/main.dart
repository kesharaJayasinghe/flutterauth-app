import 'package:flutter/material.dart';
import 'package:flutterauthapp/constants.dart';
// import 'package:flutterauthapp/screens/loginscreen.dart';
import 'package:flutterauthapp/screens/splash/splashscreen.dart';
import 'package:flutterauthapp/routes.dart';

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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
      // home: SplashScreen(),
      // home: LoginScreen(),
    );
  }
}
