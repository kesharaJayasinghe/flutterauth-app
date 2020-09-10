import 'package:flutter/material.dart';
import 'package:flutterauthapp/components/default_button.dart';
import 'package:flutterauthapp/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/signin_success.png",
              height: SizeConfig.screenHeight * 0.25, // 40%
            ),
          ],
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.1),
        Text(
          "Sign In Successful",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Continue",
            press: () {},
          ),
        )
      ],
    );
  }
}
