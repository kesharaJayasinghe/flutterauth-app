import 'package:flutter/material.dart';

import 'package:flutterauthapp/constants.dart';
import 'package:flutterauthapp/size_config.dart';
import 'package:flutterauthapp/components/default_button.dart';
import 'package:flutterauthapp/components/custom_sufix_icon.dart';
import 'package:flutterauthapp/components/form_error.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String username;
  String password;
  bool remember = false;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildUsernameFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),
              Text(
                "Forgot password",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
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
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPwdNullError)) {
          setState(() {
            errors.remove(kPwdNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPwdError)) {
          setState(() {
            errors.remove(kShortPwdError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPwdNullError)) {
          setState(() {
            errors.add(kPwdNullError);
          });
        } else if (value.length < 8 && !errors.contains(kShortPwdError)) {
          setState(() {
            errors.add(kShortPwdError);
          });
        }
        return null;
      },
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
      onSaved: (newValue) => username = newValue,
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
