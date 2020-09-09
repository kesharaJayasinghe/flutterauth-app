import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF00CB20);
const kPrimaryLightColor = Color(0xFF84E070);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

// Form Errors
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
final RegExp usernameValidatorRegExp =
    RegExp(r"^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$");
const String kUsernameNullError = "Please enter your username";
const String kInvalidUsernameError = "Please enter valid username";
const String kEmailNullError = "Please enter your email";
const String kInvalidEmailError = "Please enter valid email";
const String kPassNullError = "Please enter your password";
const String kShortPwdError = "Password is too short";
const String kMatchPwdError = "Passwords don't match";
