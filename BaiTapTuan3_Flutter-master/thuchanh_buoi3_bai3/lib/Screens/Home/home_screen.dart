import 'package:flutter/material.dart';
import 'package:thuchanh_buoi3_bai3/Screens/Home/Components/app_bar.dart';
import 'package:thuchanh_buoi3_bai3/Screens/Home/Components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    String backgroundImage =
        isLandscape ? "assets/images/bg.png" : "assets/images/bg2.png";

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(child: CustomAppBar()),
            Spacer(),
            Body(),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
