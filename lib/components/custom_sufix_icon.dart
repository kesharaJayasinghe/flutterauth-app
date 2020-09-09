import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutterauthapp/size_config.dart';

class CustomSufixIcon extends StatelessWidget {
  const CustomSufixIcon({
    Key key,
    @required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, getProportionateScreenWidth(6),
          getProportionateScreenWidth(20), getProportionateScreenWidth(6)),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenWidth(24),
      ),
    );
  }
}
