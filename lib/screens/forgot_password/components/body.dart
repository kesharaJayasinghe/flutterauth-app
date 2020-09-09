import 'package:flutter/material.dart';
import 'package:flutterauthapp/components/custom_sufix_icon.dart';
import 'package:flutterauthapp/components/default_button.dart';
import 'package:flutterauthapp/components/form_error.dart';
import 'package:flutterauthapp/components/signup_text.dart';
import 'package:flutterauthapp/constants.dart';
import 'package:flutterauthapp/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.04),
            Text(
              "Forgot Password?",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(28),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Please enter your email and we'll send \nyou a link to reset your password.",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            ForgotPwdForm(),
          ],
        ),
      ),
    );
  }
}

class ForgotPwdForm extends StatefulWidget {
  @override
  _ForgotPwdFormState createState() => _ForgotPwdFormState();
}

class _ForgotPwdFormState extends State<ForgotPwdForm> {
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.text,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              // floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSufixIcon(
                svgIcon: "assets/icons/email.svg",
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          DefaultButton(
            text: "Continue",
            press: () {},
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          SignupText(),
        ],
      ),
    );
  }
}
