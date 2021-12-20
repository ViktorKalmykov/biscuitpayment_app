// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:biscuitpayment_app/config.dart';
import 'package:biscuitpayment_app/models/actor.dart';
import 'package:biscuitpayment_app/models/order.dart';
import 'package:biscuitpayment_app/pages/detail_actor.dart';
import 'package:biscuitpayment_app/pages/favorite.dart';
import 'package:biscuitpayment_app/pages/home.dart';
import 'package:biscuitpayment_app/pages/setting.dart';
import 'package:biscuitpayment_app/pages/shop.dart';
import 'package:biscuitpayment_app/widgets/actor_component.dart';
import 'package:biscuitpayment_app/widgets/bottom_navigation_bar.dart';
import 'package:biscuitpayment_app/widgets/order_component.dart';
import 'package:biscuitpayment_app/widgets/textField.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: Config.appBar(width),
      body: page == 0
          ? Home()
          : page == 1
              ? Shop()
              : page == 2
                  ? Favorite()
                  : page == 3
                      ? Setting()
                      : Container(),
      bottomNavigationBar: SGBottomNavigationBar(
        items: [
          SGBottomNavigationBarItem(icon: Icons.home_outlined),
          SGBottomNavigationBarItem(icon: Icons.shopping_cart_outlined),
          SGBottomNavigationBarItem(icon: Icons.favorite_border),
          SGBottomNavigationBarItem(icon: Icons.settings),
        ],
        onSelected: (value) => setState(() => page = value),
      ),
    );
  }
}
