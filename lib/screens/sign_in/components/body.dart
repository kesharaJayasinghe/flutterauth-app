import 'package:flutter/material.dart';

import 'package:flutterauthapp/components/social_card.dart';
import 'package:flutterauthapp/screens/sign_in/components/signin_form.dart';
import 'package:flutterauthapp/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Column(
            children: [
              Text(
                "Welcome!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Sign In with your username and password \nor continue with social media.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(15),
                ),
              ),
              SignForm(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
