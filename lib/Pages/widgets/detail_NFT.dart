// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:biscuitpayment_app/Pages/widgets/NFT.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:biscuitpayment_app/config.dart';
import 'package:biscuitpayment_app/models/actor.dart';
import 'package:biscuitpayment_app/widgets/button.dart';
import 'package:biscuitpayment_app/widgets/qte_widget.dart';

import '../favorite.dart';
import 'NFT.dart';
import 'NFT.dart';
import 'NFT.dart';
import 'Price header.dart';
import 'coin chart.dart';
import 'data bars.dart';

class DetailNFT extends StatelessWidget {
  const DetailNFT({Key? key, required this.NFT}) : super(key: key);
  final Actor NFT;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
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
                  ),
                  SafeArea(
                      child: ListView(
                        children: <Widget>[

                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            height: 35,
                            width: 20,
                            child: ListView.builder(
                                itemCount: matches.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (ctx, i) {
                                  return Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 10),
                                    padding:
                                    EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: AutoSizeText(
                                      matches[i].text,
                                      style: TextStyle(color: Colors.pink),
                                    ),
                                  );
                                }),
                          ),
                          SizedBox(height: 0),


                          SizedBox(height: 5),
                          Price(percentChange: 11),
                          Container(height: 170,
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: AssetPriceChart(lineColor: Colors.pink,),
                          ),
                          ChartFilter(),
                          SizedBox(height: 30),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                              child: SafeArea(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Hero(
                                          tag: "${NFT.asset}&${NFT.title}",
                                          child: Material(
                                            color: Colors.transparent,
                                            child: StatefulBuilder(
                                              builder: (context, setState) {
                                                return IconButton(
                                                  onPressed: () {
                                                    NFT.fav = !NFT.fav;
                                                    setState(() {});
                                                  },
                                                  icon: Icon(
                                                    NFT.fav
                                                        ? MdiIcons.heart
                                                        : FeatherIcons.heart,
                                                    color: NFT.fav
                                                        ? Config.colors.pink
                                                        : Config.colors
                                                        .menuColor,
                                                  ),
                                                );
                                              },
                                            ),
                                          )),
                                    ],
                                  )),
                            ),
                          ),
                          MoreNFT(NFT: this.NFT,)
                        ],
                      )
                  )
                ]
            )
        )
    );
  }
}

class NFT {
}

class MoreNFT extends StatelessWidget {
  const MoreNFT({Key? key, required this.NFT}) : super(key: key);
  final Actor NFT;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
        return Scaffold(
            body: Container(
                margin: const EdgeInsets.only(bottom: 10, left: 32, right: 32),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xFF20008B),
    const Color(0xFF200087),
    ],
    ),
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    SizedBox(
    width: 20,
    ),
    Padding(
    padding: const EdgeInsets.only(top: 16.0, left: 16),
    child: Text(
    "YOUR NEXT WORKOUT",
    style: TextStyle(
    color: Colors.white70,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(top: 4.0, left: 16),
    child: Text(
    "Upper Body",
    style: TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.w800,
    ),
    ),
    ),
    Expanded(
    child: Row(
    children: <Widget>[
    SizedBox(
    width: 20,
    ),
    Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(25)),
    color: const Color(0xFF5B4D9D),
    ),
    padding: const EdgeInsets.all(10),
    child: Image.asset(
    "assets/chest.png",
    width: 50,
    height: 50,
    color: Colors.white,
    ),
    ),
    SizedBox(
    width: 10,
    ),
    Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(25)),
    color: const Color(0xFF5B4D9D),
    ),
    padding: const EdgeInsets.all(10),
    child: Image.asset(
    "assets/back.png",
    width: 50,
    height: 50,
    color: Colors.white,
    ),
    ),
    SizedBox(
    width: 10,
    ),
    Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(25)),
    color: const Color(0xFF5B4D9D),
    ),
    padding: const EdgeInsets.all(10),
    child: Image.asset(
    "assets/biceps.png",
    width: 50,
    height: 50,
    color: Colors.white,
    ),
    ),
    ]
    )
    )
    ]

    )
    ));

    }
                }
