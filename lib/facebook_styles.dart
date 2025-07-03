import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract final class FacebookColors {
  static const Color blue = Color(0xff1877f2);
  static const Color gray = Color(0xff898F9C);
  static const Color wghit = Color(0xffffffff);
  static const Color black = Color(0xff242527);


  
}

abstract final class FacebookTextStyle {
  static const TextStyle blue24normal = TextStyle(
    color: FacebookColors.blue,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle blue16normal = TextStyle(
    color: FacebookColors.blue,
    fontSize: 30,
    fontWeight: FontWeight.w800,
  );
  static const TextStyle blue24extraBbold = TextStyle(
    color: FacebookColors.blue,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle gray16normal = TextStyle(
    color: FacebookColors.gray,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle wghit16normal = TextStyle(
    color: FacebookColors.wghit,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle gray16medume = TextStyle(
    color: FacebookColors.gray,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle black16medume = TextStyle(
    color: FacebookColors.black,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}

abstract final class FacebookAssets{
  
}