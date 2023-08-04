import 'package:flutter/material.dart';
import 'package:thuchanh_buoi3_bai4/components/coustom_bottom_nav_bar.dart';
import 'package:thuchanh_buoi3_bai4/enums.dart';
import '../cart/components/body.dart';


class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
