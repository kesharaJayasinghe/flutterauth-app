import 'package:flutter/widgets.dart';

import 'package:flutterauthapp/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutterauthapp/screens/signin_success/signin_success_screen.dart.dart';
import 'package:flutterauthapp/screens/splash/splashscreen.dart';
import 'package:flutterauthapp/screens/sign_in/signin_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SigninSuccessScreen.routeName: (context) => SigninSuccessScreen(),
};
