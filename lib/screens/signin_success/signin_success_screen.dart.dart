import 'package:flutter/material.dart';
import 'package:flutterauthapp/screens/signin_success/components/body.dart';

class SigninSuccessScreen extends StatelessWidget {
  static String routeName = "/signin_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: SizedBox(),
        title: Text("Sign In Success"),
      ),
      body: Body(),
    );
  }
}
