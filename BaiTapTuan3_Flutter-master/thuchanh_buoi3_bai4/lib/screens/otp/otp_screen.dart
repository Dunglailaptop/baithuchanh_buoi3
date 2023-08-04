import 'package:flutter/material.dart';
import 'package:thuchanh_buoi3_bai4/size_config.dart';

import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";

  const OtpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP Verification"),
      ),
      // ignore: prefer_const_constructors
      body: Body(),
    );
  }
}
