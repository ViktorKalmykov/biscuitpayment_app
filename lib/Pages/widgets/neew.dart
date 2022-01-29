// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:biscuitpayment_app/Pages/widgets/NFT.dart';
import 'package:biscuitpayment_app/models/order.dart';
import 'package:biscuitpayment_app/widgets/order_component.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:biscuitpayment_app/config.dart';
import 'package:biscuitpayment_app/models/actor.dart';
import 'package:biscuitpayment_app/widgets/button.dart';
import 'package:biscuitpayment_app/widgets/qte_widget.dart';

import '../../drawer.dart';
import '../favorite.dart';
import '../home.dart';
import 'NFT.dart';
import 'NFT.dart';
import 'NFT.dart';
import 'Price header.dart';
import 'coin chart.dart';
import 'data bars.dart';

final actors = [
  Actor(
      asset: Config.assets.shinobi,
      title: "ZTE NFT",
      price: 75.7,
      rating: 4),
  Actor(
      asset: Config.assets.ork,
      title: "Cryptork",
      price: 60,
      rating: 3),
  Actor(
      asset: Config.assets.goo,
      title: "Crypto Goo",
      price: 60,
      rating: 3),
  Actor(
      asset: Config.assets.ork,
      title: "Cryptork",
      price: 60,
      rating: 3),
];

final actors2 = [
  Actor(
      asset: Config.assets.pokemon,
      title: "ZTE NFT",
      price: 75.7,
      rating: 4),
  Actor(
      asset: Config.assets.squid,
      title: "Cryptork",
      price: 60,
      rating: 3),
  Actor(
      asset: Config.assets.pokemon2,
      title: "Crypto Goo",
      price: 60,
      rating: 3),
  Actor(
      asset: Config.assets.ork,
      title: "Cryptork",
      price: 60,
      rating: 3),
];

final orders = [
  Order(asset: Config.assets.u2, title: "Collector outfit", qte: 5),
  Order(asset: Config.assets.doll, title: "Doll", qte: 2),
  Order(asset: Config.assets.u2, title: "Collector outfit", qte: 5),
  Order(asset: Config.assets.doll, title: "Doll", qte: 2),
];
final hot = [
  Order(asset: Config.assets.gdup, title: "Red Alert", qte: 5),
  Order(asset: Config.assets.kidkid, title: "Crypto Humster", qte: 2),
  Order(asset: Config.assets.kidkidd, title: "Crypto Ninja", qte: 5),
  Order(asset: Config.assets.gdup, title: "Red Kitty", qte: 5),
];
final hot2 = [
  Order(asset: Config.assets.pokemon, title: "Cryptomon", qte: 5),
  Order(asset: Config.assets.squid, title: "Squid NFT", qte: 2),
  Order(asset: Config.assets.pokemon2, title: "Cryptonyak", qte: 5),
  Order(asset: Config.assets.kidkidd, title: "Red Ninja", qte: 5),
];
final hot3 = [
  Order(asset: Config.assets.eminem, title: "Rap celeb", qte: 5),
  Order(asset: Config.assets.obama, title: "Crypto politics", qte: 2),
  Order(asset: Config.assets.trump, title: "Crypto boss", qte: 5),
  Order(asset: Config.assets.gdup, title: "Red Kitty", qte: 5),
];
double money = 50.00;
int currentIndex = 0;


class neew extends StatelessWidget {

  const neew({Key? key, required this.actor}) : super(key: key);
  final Actor actor;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(appBar: AppBar(backgroundColor: Colors.pink,
      title: Text("FIGHT"),
      centerTitle: true,
    ),
        drawer: NavigationDrawerWidget(),
        body: ListView(
            children: <Widget>[
                Container(
                    height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(60),
                        bottomLeft: Radius.circular(60),)
                  ),
                    child: Carousel(
                        dotSize: 4.0,
                        dotSpacing: 15.0,
                        dotColor: Colors.pink,
                        indicatorBgPadding: 5.0,
                        dotBgColor: Colors.transparent,
                    images:[
                      Image.asset('assets/jjoe.gif', fit: BoxFit.cover),
                      Image.asset('assets/cyberpunk.gif', fit: BoxFit.cover),
                      Image.asset('assets/vhs.gif', fit: BoxFit.cover),
                    ]

                    ),








    )]));
  }
}

class Order {
  String? title;
  int? qte;
  String? asset;
  Order({this.asset, this.qte, this.title});
}