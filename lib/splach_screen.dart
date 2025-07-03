import 'package:facebook_app/facebook_styles.dart';
import 'package:facebook_app/login_screen.dart';
import 'package:flutter/material.dart';

class SplachScreen extends StatefulWidget {
  static const routeName = "splachScreen";

  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Scaffold(
        backgroundColor: FacebookColors.wghit,
        body: Column(
          children: [
            Spacer(),
            Center(child: Image.asset(FacebookAssets.faceLogo)),
            Spacer(),
            Center(child: Text("From", style: FacebookTextStyle.gray16medume)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(FacebookAssets.mitaLogo),
                Text("meta", style: FacebookTextStyle.blue24normal),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
