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

import '../drawer.dart';

final hot = [
  Order(asset: Config.assets.gdup, title: "Red Alert", qte: 5),
  Order(asset: Config.assets.kidkid, title: "Crypto Humster", qte: 2),
  Order(asset: Config.assets.kidkidd, title: "Crypto Ninja", qte: 5),
  Order(asset: Config.assets.gdup, title: "Red Kitty", qte: 5),
];


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
      appBar: AppBar(backgroundColor: Colors.pink,
        title: Text("MARKETPLACE"),
        centerTitle: true,
      ),
      drawer: NavigationDrawerWidget(),
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
          SGBottomNavigationBarItem(icon: Icons.polymer),
          SGBottomNavigationBarItem(icon: Icons.select_all),
          SGBottomNavigationBarItem(icon: Icons.stars),
        ],
        onSelected: (value) => setState(() => page = value),
      ),
    );
  }
}
