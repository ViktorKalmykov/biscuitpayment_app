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
final hot22 = [
  Order(asset: Config.assets.vhs),
  Order(asset: Config.assets.cyberpunk),
  Order(asset: Config.assets.jjoe),
  Order(asset: Config.assets.jjoe),
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
      title: Text("FIGHT"),
      centerTitle: true,
    ),
        drawer: NavigationDrawerWidget(),
        body: Container(
            child: Stack(
                children: <Widget>[
                  Container(
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/jjoe.gif'), fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(60),
                            bottomLeft: Radius.circular(60),)
                      ),),
                      SafeArea(
                        child: ListView(
                          children: <Widget>[

                            SizedBox(height: 10),

                        Row(mainAxisAlignment: MainAxisAlignment.center,

                            children: <Widget>[

                              SizedBox(height: 25),
                              Price(percentChange: 27),
                              Image.asset('assets/muda.gif'),
                              Price(percentChange: 14),
                              Image.asset('assets/ora.gif'),
                            ]),

                          SizedBox(height: 180),
                          ListTile(
                            onTap: () {
                              _settingModalBottomSheet(context);
                            },
                            leading: Icon(
                              Icons.equalizer, color: Colors.pink,),
                            title: RichText(text: TextSpan(children: [
                              TextSpan(text: 'MOST RECENT SPREAD'),

                            ], style: TextStyle(color: Colors.black, fontSize: 18))),
                            trailing: Text("\18.1%", style: TextStyle(fontSize: 20),),
                          ),
                          SizedBox(height: 5),
                          SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                ClayContainer(
                                  height: 140,
                                  width: width * 0.27,
                                  emboss: true,
                                  borderRadius: 16,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 16.0,
                                          right: 16,
                                          top: 16,
                                        ),

                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0,
                                        ),

                                      ),


                                      Container(
                                        margin: const EdgeInsets.only(
                                          bottom: 16,
                                          left: 16,
                                          right: 16,
                                        ),
                                        height: 105,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage('assets/jjoe.gif'), fit: BoxFit.cover),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ClayContainer(
                                  height: 140,
                                  width: width * 0.27,
                                  emboss: true,
                                  borderRadius: 16,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 16.0,
                                          right: 16,
                                          top: 16,
                                        ),

                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0,
                                        ),

                                      ),

                                      Container(
                                        margin: const EdgeInsets.only(
                                          bottom: 16,
                                          left: 16,
                                          right: 16,
                                        ),
                                        height: 105,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage('assets/vhs.gif'), fit: BoxFit.cover),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ClayContainer(
                                  height: 140,
                                  width: width * 0.27,
                                  emboss: true,
                                  borderRadius: 16,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 16.0,
                                          right: 16,
                                          top: 16,
                                        ),

                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0,
                                        ),

                                      ),

                                      Container(
                                        margin: const EdgeInsets.only(
                                          bottom: 16,
                                          left: 16,
                                          right: 16,
                                        ),
                                        height: 105,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage('assets/cyberpunk.gif'), fit: BoxFit.cover),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          SizedBox(height: 30),
                          Container(height: 430,
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
                                      "Stand NFT",
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
                                          "20,00€",
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
                                        child: Text("Recent trades"),
                                      ),
                                    ],
                                  ),

                                  ListTile(
                                    onTap: () {
                                      _settingModalBottomSheet(context);
                                    },
                                    leading: Icon(
                                      Icons.remove_circle_outline, color: Colors.pink,),
                                    title: RichText(text: TextSpan(children: [
                                      TextSpan(text: 'Short Position\n'),
                                      TextSpan(
                                          text: 'Tap to Execute \n', style: TextStyle(
                                          fontSize: 12, color: Colors.black))
                                    ], style: TextStyle(color: Colors.black, fontSize: 18))),
                                    trailing: Text("- \$630", style: TextStyle(fontSize: 20),),
                                  ),

                                  ListTile(
                                    onTap: () {
                                      _settingModalBottomSheet(context);
                                    },
                                    leading: Icon(
                                      Icons.add_circle_outline, color: Colors.pink,),
                                    title: RichText(text: TextSpan(children: [
                                      TextSpan(text: 'Long Position\n'),
                                      TextSpan(text: 'Tap to Execute\n',
                                          style: TextStyle(fontSize: 12, color: Colors.black))
                                    ], style: TextStyle(color: Colors.black, fontSize: 18))),
                                    trailing: Text("+ \$820", style: TextStyle(fontSize: 20),),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: (Text("Offering ends 29.01.2022", style: TextStyle
                                          (color: Colors.redAccent,
                                            fontSize: 14),)),
                                      ),
                                    ],
                                  ),


                                ],

                              )
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ClayContainer(
                                height: 140,
                                width: width * 0.27,
                                emboss: true,
                                borderRadius: 16,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 16.0,
                                        right: 16,
                                        top: 16,
                                      ),
                                      child: Text(
                                        "Sold stats",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0,
                                      ),
                                      child: Text(
                                        "20,00€",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                    Container(height: 50,
                                      width: double.infinity,
                                      margin: EdgeInsets.symmetric(horizontal: 15),
                                      child: AssetPriceChart(lineColor: Colors.pink,),
                                    ),
                                    Spacer(),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        bottom: 16,
                                        left: 16,
                                        right: 16,
                                      ),
                                      height: 10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black45,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ClayContainer(
                                height: 140,
                                width: width * 0.27,
                                emboss: true,
                                borderRadius: 16,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 16.0,
                                        right: 16,
                                        top: 16,
                                      ),
                                      child: Text(
                                        "Bidding stats",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0,
                                      ),
                                      child: Text(
                                        "22,00€",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                    Container(height: 50,
                                      width: double.infinity,
                                      margin: EdgeInsets.symmetric(horizontal: 15),
                                      child: AssetPriceChart(lineColor: Colors.blue,),
                                    ),
                                    Spacer(),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        bottom: 16,
                                        left: 16,
                                        right: 16,
                                      ),
                                      height: 10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black45,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ClayContainer(
                                height: 140,
                                width: width * 0.27,
                                borderRadius: 16,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 16.0,
                                        right: 16,
                                        top: 16,
                                      ),
                                      child: Text(
                                        "Unlock enhanced statistics",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0,
                                      ),
                                      child: Text(
                                        "By purchasing subscription",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        margin: const EdgeInsets.only(bottom: 16, right: 16),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xFFFF559F),
                                              Color(0xFFCF5CCF),
                                              Color(0xFFFF57AC),
                                              Color(0xFFFF6D91),
                                              Color(0xFFFF8D7E),
                                              Color(0xFFB6BAA6),
                                            ],
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          ]

                      ),

            ),





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
                  child: Icon(Icons.compare_arrows, color: Colors.pink,),
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

Container courseWidget(String img, fit)
{
  return Container(
    height: 100,
    margin: EdgeInsets.only(right: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white70
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),
        ),
        Container(
          height: 90,
          width: 70,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('Runner/assets/icons/$img.png'),
                  fit: BoxFit.contain
              )
          ),
        )
      ],
    ),
  );
}
