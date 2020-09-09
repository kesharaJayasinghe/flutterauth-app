import 'package:flutter/material.dart';

import 'package:flutterauthapp/components/default_button.dart';
import 'package:flutterauthapp/constants.dart';
import 'package:flutterauthapp/screens/sign_in/components/custom_sufix_icon.dart';
import 'package:flutterauthapp/screens/sign_in/components/form_error.dart';
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
            ],
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildUsernameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          FormError(errors: errors),
          DefaultButton(
            text: "Sign In",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        // floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSufixIcon(
          svgIcon: "assets/icons/lock.svg",
        ),
      ),
    );
  }

  TextFormField buildUsernameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kUsernameNullError)) {
          setState(() {
            errors.remove(kUsernameNullError);
          });
        } else if (usernameValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidUsernameError)) {
          setState(() {
            errors.remove(kInvalidUsernameError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kUsernameNullError)) {
          setState(() {
            errors.add(kUsernameNullError);
          });
        } else if (!usernameValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidUsernameError)) {
          setState(() {
            errors.add(kInvalidUsernameError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Username",
        hintText: "Enter your username",
        // floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSufixIcon(
          svgIcon: "assets/icons/person.svg",
        ),
      ),
    );
  }
}
