// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:biscuitpayment_app/Pages/widgets/NFT.dart';
import 'package:biscuitpayment_app/models/order.dart';
import 'package:biscuitpayment_app/widgets/order_component.dart';
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

double money = 50.00;
int currentIndex = 0;


class DtailActor extends StatelessWidget {

  const DtailActor({Key? key, required this.actor}) : super(key: key);
  final Actor actor;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                                itemCount: matches1.length,
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
                                      matches1[i].text,
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

                          SizedBox(
                            height: 135,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              itemBuilder: (context, i) {
                                final order = hot[i];
                                return Container(
                                  margin: EdgeInsets.only(
                                      left: i == 0 ? 20 : 0,
                                      right: i == orders.length - 1 ? 20 : 15),
                                  child: OrderComponent(
                                    order: order,
                                  ),
                                );
                              },
                              itemCount: actors.length,
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(height: 400,
                        margin: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white70,
                              Colors.white,
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
                          "STATISTICS",
                          style: TextStyle
                            (color: Colors.black,
                            fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0, left: 16),
                        child: Text(
                          "Shinobi ZTE",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14
                          ),
                        ),

                      ),
                            Padding(
    padding: const EdgeInsets.symmetric(
    horizontal: 16.0,
    ),
    child: Text(
    "19,00€",
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    color: Colors.black45,
    ))),

                      Container(height: 100,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: AssetPriceChart(lineColor: Colors.pink,),
                      ),
                      ChartFilter(),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Recent transactions"),
                          ),
                        ],
                      ),

                      ListTile(
                        onTap: () {
                          _settingModalBottomSheet(context);
                        },
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage('images/p2.jpg'),),
                        title: RichText(text: TextSpan(children: [
                          TextSpan(text: 'Short Position'),
                          TextSpan(
                              text: 'Executed - Today 9AM\n', style: TextStyle(
                              fontSize: 14, color: Colors.white70))
                        ], style: TextStyle(color: Colors.black, fontSize: 18))),
                        trailing: Text("- \$430", style: TextStyle(fontSize: 20),),
                      ),

                      ListTile(
                        onTap: () {
                          _settingModalBottomSheet(context);
                        },
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("images/p2.jpg"),),
                        title: RichText(text: TextSpan(children: [
                          TextSpan(text: 'Long Position'),
                          TextSpan(text: 'Executed - Today 12PM\n',
                              style: TextStyle(fontSize: 14, color: Colors.white70))
                        ], style: TextStyle(color: Colors.black, fontSize: 18))),
                        trailing: Text("+ \$220", style: TextStyle(fontSize: 20),),
                      ),],
                      )
                  )
                ]

            ),

            )
  ])));
  }
}


void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20))
          ),
          child: new Wrap(
            children: <Widget>[

              Row(
                mainAxisAlignment: MainAxisAlignment.center
                , children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(radius: 25,
                    backgroundImage: AssetImage("images/p2.jpg"),),
                ),
              ],),
              Container(
                alignment: Alignment.center,
                child: Text("Long Position", style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Amount to execute"),
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(
                        onTap: () {
                          if (money != 0) {
                            money -= 10;
                          }
                        },
                        child: CircleAvatar(
                          child: Icon(Icons.remove, color: Colors.white,),
                          radius: 20,
                          backgroundColor: Colors.grey,)),
                  ),
                  SizedBox(width: 10,),
                  Text("$money", style: TextStyle(
                      fontSize: 38, fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(
                        onTap: () {

                        },
                        child: CircleAvatar(
                          child: Icon(Icons.add, color: Colors.white,),
                          radius: 20,
                          backgroundColor: Colors.grey,)),
                  ),

                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(16),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text("Execute", style: TextStyle(
                            fontSize: 22, color: Colors.white),),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }
  );
}

