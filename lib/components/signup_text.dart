import 'package:flutter/material.dart';

import 'package:flutterauthapp/constants.dart';
import 'package:flutterauthapp/size_config.dart';

class SignupText extends StatelessWidget {
  const SignupText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(15),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(15),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
