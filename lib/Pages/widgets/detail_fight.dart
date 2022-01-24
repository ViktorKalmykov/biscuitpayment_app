// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

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


class Dtailfight extends StatelessWidget {

  const Dtailfight({Key? key, required this.actor}) : super(key: key);
  final Actor actor;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(appBar: AppBar(backgroundColor: Colors.pink,
      title: Text("ASSET PAGE"),
      centerTitle: true,
    ),
        drawer: NavigationDrawerWidget(),
        body: Container(
            child: Stack(
                children: <Widget>[
                  Container(
                      height: 360,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.pink,
                              Colors.blue,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(60),
                            bottomLeft: Radius.circular(60),)
                      ),
                      child: SafeArea(
                        child: ListView(
                            children: <Widget>[


                              Image.asset('assets/muda.gif',
                                  width: 30, height: 180),
                              Image.asset('assets/ora.gif',
                                  width: 30, height: 180),
                            ]),
                      ),


                             ),

                ])));
  }
}


