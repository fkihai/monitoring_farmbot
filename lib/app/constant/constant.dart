import 'package:flutter/material.dart';
import 'package:monitoring_farmbot/app/constant/size_config.dart';

Color? kPrimaryColor = Colors.blue[400];
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);

const kSecondaryColor = Color(0xff1974CF);
const kTextColor1 = Color(0xff050608);
const kTextColor2 = Color(0xff050608);

const kAnimationDuration = Duration(milliseconds: 200);

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: kTextColor1),
  );
}
