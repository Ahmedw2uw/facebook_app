import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract final class FacebookColors {
  static const Color blue = Color(0xff1877f2);
  static const Color gray = Color(0xff898F9C);
  static const Color whitegray = Color(0xffD6DFF1);

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
    fontSize: 16,
    fontWeight: FontWeight.w400,
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
    fontSize: 14,
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

  static const TextStyle blue30extraBbold = TextStyle(
    color: FacebookColors.blue,
    fontSize: 30,
    fontWeight: FontWeight.w800,
  );
}

abstract final class FacebookAssets {
  static const String faceLogo = "assets/face_logo.png";
  static const String mitaLogo = "assets/mita_logo.png";
  static const String profileIcon = "assets/profile_icon.png";
  static const String profileImage = "assets/profile_image.png";
  static const String routeIcon = "assets/route_icon.png";
  static const String routeImag = "assets/route_photo.png";
  static const String story1Icon = "assets/story_1_icon.png";
  static const String story1Photo = "assets/story_1_image.png";
  static const String story2Icon = "assets/story_2_icon.png";
  static const String story2Photo = "assets/story_2_photo.png";
  static const String story3Icon = "assets/story_3_image.jpg";
  static const String story3Photo = "assets/story_3_icon.jpg";

  static const String facebook = "assets/Facebook.png";
  static const String messenger = "assets/Messenger.png";
}
