import 'package:flutter/widgets.dart';
import 'package:flutterauthapp/screens/splash/splashscreen.dart';
import 'package:flutterauthapp/screens/sign_in/signin_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
