// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bezier_chart/bezier_chart.dart';
import 'package:biscuitpayment_app/Pages/charts.dart';
import 'package:biscuitpayment_app/Pages/widgets/Asset%20stats.dart';
import 'package:biscuitpayment_app/Pages/widgets/Final%20stat.dart';
import 'package:biscuitpayment_app/Pages/widgets/NFT.dart';
import 'package:biscuitpayment_app/Pages/widgets/NFT_component.dart';
import 'package:biscuitpayment_app/Pages/widgets/Price%20header.dart';
import 'package:biscuitpayment_app/Pages/widgets/Trending.dart';
import 'package:biscuitpayment_app/Pages/widgets/coin%20chart.dart';
import 'package:biscuitpayment_app/Pages/widgets/data%20bars.dart';
import 'package:biscuitpayment_app/Pages/widgets/detail_NFT.dart';
import 'package:biscuitpayment_app/Pages/widgets/detail_fight.dart';
import 'package:biscuitpayment_app/Pages/widgets/detail_jotaro.dart';
import 'package:biscuitpayment_app/Pages/widgets/graph.dart';
import 'package:biscuitpayment_app/Pages/widgets/neew.dart';
import 'package:biscuitpayment_app/screens/dashboard/components/graph%20chart/new%20chart.dart';
import 'package:biscuitpayment_app/Pages/Chart%20for%20home%20page.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:biscuitpayment_app/config.dart';
import 'package:biscuitpayment_app/models/actor.dart';
import 'package:biscuitpayment_app/models/order.dart';
import 'package:biscuitpayment_app/pages/detail_actor.dart';
import 'package:biscuitpayment_app/widgets/actor_component.dart';
import 'package:biscuitpayment_app/widgets/order_component.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../responsive.dart';


const kPrimaryColor = Color(0xFFFFC61F);
const ksecondaryColor = Color(0xFFB5BFD0);
const kTextColor = Color(0xFF50505D);
const kTextLightColor = Color(0xFF6A727D);

const kDefaultPadding = 20.0;



List<BezierLine> lines = [
  BezierLine(
      label: "\$",
      data: [
        DataPoint<DateTime>(value: 15000, xAxis: DateTime(2021, 1, 1, 2, 0)),
        DataPoint<DateTime>(value: 10000, xAxis: DateTime(2021, 1, 1, 2, 30)),
        DataPoint<DateTime>(value: 25000, xAxis: DateTime(2021, 1, 1, 3, 0)),
        DataPoint<DateTime>(value: 8000, xAxis: DateTime(2021, 1, 1, 3, 30)),
        DataPoint<DateTime>(value: 15000, xAxis: DateTime(2021, 1, 1, 4, 0)),
        DataPoint<DateTime>(value: 30000, xAxis: DateTime(2021, 1, 1, 4, 30)),
        DataPoint<DateTime>(value: 15000, xAxis: DateTime(2021, 1, 1, 5, 0)),
        DataPoint<DateTime>(value: 12000, xAxis: DateTime(2021, 1, 1, 5, 30)),
        DataPoint<DateTime>(value: 18000, xAxis: DateTime(2021, 1, 1, 6, 0)),
        DataPoint<DateTime>(value: 12000, xAxis: DateTime(2021, 1, 1, 6, 30)),
        DataPoint<DateTime>(value: 18000, xAxis: DateTime(2021, 1, 1, 7, 0)),
      ],
      lineColor: Style.appOrange,
      lineStrokeWidth: 2),
  BezierLine(
      label: "\$",
      data: [
        DataPoint<DateTime>(value: 5000, xAxis: DateTime(2021, 1, 1, 2, 0)),
        DataPoint<DateTime>(value: 1000, xAxis: DateTime(2021, 1, 1, 2, 30)),
        DataPoint<DateTime>(value: 2000, xAxis: DateTime(2021, 1, 1, 3, 0)),
        DataPoint<DateTime>(value: 18000, xAxis: DateTime(2021, 1, 1, 3, 30)),
        DataPoint<DateTime>(value: 10000, xAxis: DateTime(2021, 1, 1, 4, 0)),
        DataPoint<DateTime>(value: 3000, xAxis: DateTime(2021, 1, 1, 4, 30)),
        DataPoint<DateTime>(value: 5000, xAxis: DateTime(2021, 1, 1, 5, 0)),
        DataPoint<DateTime>(value: 13000, xAxis: DateTime(2021, 1, 1, 5, 30)),
        DataPoint<DateTime>(value: 10000, xAxis: DateTime(2021, 1, 1, 6, 0)),
        DataPoint<DateTime>(value: 15000, xAxis: DateTime(2021, 1, 1, 6, 30)),
        DataPoint<DateTime>(value: 6000, xAxis: DateTime(2021, 1, 1, 7, 0)),
      ],
      lineColor: Color(0xff76FC9D),
      lineStrokeWidth: 2),
  BezierLine(
      label: "\$",
      data: [
        DataPoint<DateTime>(value: 6000, xAxis: DateTime(2021, 1, 1, 2, 0)),
        DataPoint<DateTime>(value: 4000, xAxis: DateTime(2021, 1, 1, 2, 30)),
        DataPoint<DateTime>(value: 2000, xAxis: DateTime(2021, 1, 1, 3, 0)),
        DataPoint<DateTime>(value: 8000, xAxis: DateTime(2021, 1, 1, 3, 30)),
        DataPoint<DateTime>(value: 3000, xAxis: DateTime(2021, 1, 1, 4, 0)),
        DataPoint<DateTime>(value: 1000, xAxis: DateTime(2021, 1, 1, 4, 30)),
        DataPoint<DateTime>(value: 3000, xAxis: DateTime(2021, 1, 1, 5, 0)),
        DataPoint<DateTime>(value: 10000, xAxis: DateTime(2021, 1, 1, 5, 30)),
        DataPoint<DateTime>(value: 4000, xAxis: DateTime(2021, 1, 1, 6, 0)),
        DataPoint<DateTime>(value: 10000, xAxis: DateTime(2021, 1, 1, 6, 30)),
        DataPoint<DateTime>(value: 12000, xAxis: DateTime(2021, 1, 1, 7, 0)),
      ],
      lineColor: Color(0xff70FFE7),
      lineStrokeWidth: 2),
];


class Match {
  final bool isSelected;
  final String text;

  Match({required this.isSelected, required this.text});
}

List matches1 = [
  Match(isSelected: true, text: "NFT"),
  Match(isSelected: false, text: "Crypto"),
  Match(isSelected: false, text: "Avatars"),
  Match(isSelected: false, text: "Rights of use"),
  Match(isSelected: false, text: "Other"),
];

final hot2 = [
  order(asset: Config.assets.pokemon, title: "Cryptomon", qte: 5),
  order(asset: Config.assets.squid, title: "Squid NFT", qte: 2),
  order(asset: Config.assets.pokemon2, title: "Cryptonyak", qte: 5),
  order(asset: Config.assets.kidkidd, title: "Red Ninja", qte: 5),
];

class Style {
  static Color primaryColor = Color(0xff455A6F);
  static Color secondaryColor = Color(0xffFFEFA1);
  static Color backgroundColor = Color(0xff191B2A);
  static Color backgroundColor2 = Color(0xff3C4055);
  static Color backgroundColor3 = Color(0xff1C1F2C);
  static Color appGreen = Color(0xff02A97A);
  static Color appWhite = Color(0xffEBECF2);
  static Color appOrange = Color(0xffDD7E06);
}

class DiscountCard extends StatelessWidget{
  const DiscountCard({required Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Offers & Discounts",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: 166,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                    "C:\Users\User\StudioProjects\biscuitpayment_app\lib\Pages\widgets\images\NFT-1.jpg"),
              ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFF961F).withOpacity(0.7),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyFiles3 extends StatelessWidget {
  const MyFiles3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical:
                  defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                ),
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Add"),
            ),
          ],
        ),
      ],
    );
  }
}

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  double get height => 500;

  double get percentage => 500;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
    final toohotactors = [
      Actor(
          asset: Config.assets.xmen,
          title: "Anxiety",
          price: 75.7,
          rating: 4),
      Actor(
          asset: Config.assets.jotaro,
          title: "Stand NFT",
          price: 60,
          rating: 3),
      Actor(
          asset: Config.assets.gang,
          title: "Gang Dance NFT",
          price: 60,
          rating: 3),
      Actor(
          asset: Config.assets.ora,
          title: "Ora NFT",
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
      order(asset: Config.assets.u2, title: "Collector outfit", qte: 5),
      order(asset: Config.assets.doll, title: "Doll", qte: 2),
      order(asset: Config.assets.u2, title: "Collector outfit", qte: 5),
      order(asset: Config.assets.doll, title: "Doll", qte: 2),
    ];
    final types = [
      Text("NFT assets"),
      Text("Avatars"),
      Text("Rights of use"),
      Text("Crypto"),
      Text("Other assets"),
    ];
    final toohot = [
      order(asset: Config.assets.xmen, title: "Anxiety", qte: 5),
      order(asset: Config.assets.jotaro, title: "Stand", qte: 5),
      order(asset: Config.assets.gang, title: "Gang NFT", qte: 5),
      order(asset: Config.assets.ora, title: "Ora NFT", qte: 2),
    ];
    final hot = [
      order(asset: Config.assets.gdup, title: "Red Alert", qte: 5),
      order(asset: Config.assets.kidkid, title: "Crypto Humster", qte: 2),
      order(asset: Config.assets.kidkidd, title: "Crypto Ninja", qte: 5),
      order(asset: Config.assets.gdup, title: "Red Kitty", qte: 5),
    ];
    final hot3 = [
      order(asset: Config.assets.eminem, title: "Rap celeb", qte: 5),
      order(asset: Config.assets.obama, title: "Crypto politics", qte: 2),
      order(asset: Config.assets.trump, title: "Crypto boss", qte: 5),
      order(asset: Config.assets.gdup, title: "Red Kitty", qte: 5),
    ];
    final hot4 = [
      order(asset: Config.assets.ronnie, title: "Crypto Ronnie", qte: 5),
      order(asset: Config.assets.ronaldo, title: "Crypto Goat", qte: 2),
      order(asset: Config.assets.mbappe, title: "Crypto Mbappe", qte: 5),
      order(asset: Config.assets.gdup, title: "Red Kitty", qte: 5),
    ];
    final hot5 = [
      order(asset: Config.assets.boy, title: "Crypto Boy", qte: 5),
      order(asset: Config.assets.pizza, title: "Crypto Pizza", qte: 2),
      order(asset: Config.assets.art, title: "Crypto Art", qte: 5),
      order(asset: Config.assets.gdup, title: "Red Kitty", qte: 5),
    ];
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
                        itemCount: matches1.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, i) {
                          return Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
                    child: Text(
                      'Hot offerings',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 135,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      itemBuilder: (context, i) {
                        final order = toohot[i];
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
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
                    child: Text(
                      '2HOT NFT Collection',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 330,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) {
                        final actor = toohotactors[i];
                        return Container(
                          margin: EdgeInsets.only(
                              left: i == 0 ? 20 : 0,
                              right: i == actors.length - 1 ? 20 : 8),
                          child: ActorComponent(
                            actor: actor,
                            onPressed: () {
                              Config.navigate(
                                  context,
                                  DtailJotaro(
                                    actor: actor,
                                  )
                              );

                            },


                          ),



                        );

                      },
                      itemCount: actors.length,
                    ),
                  ),
                  SizedBox(height: 14),
                  SizedBox(

                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      width: double.infinity,
                      height: 166,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("C:\Users\User\StudioProjects\biscuitpayment_app\lib\Pages\images\NFT-1.jpg"),
                        ),
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(

                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFF961F).withOpacity(0.7),
                              kPrimaryColor.withOpacity(0.7),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Image.asset('assets/999.png',
                                    width:30,height:180),
                              ),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(color: Colors.white),
                                    children: [
                                      TextSpan(
                                        text: "Get Discount of \n",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      TextSpan(
                                        text: "15% \n",
                                        style: TextStyle(
                                          fontSize: 43,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                        "on our subscription solutions and any partner offerings",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 14),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
                    child: Text(
                      'Trending',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sorted by higher %',
                            style: TextStyle(color: Colors.black45)),
                        Row(children: [
                          Text(
                            '24H',
                            style: TextStyle(color: Colors.black45),
                          ),
                          Icon(Icons.keyboard_arrow_down, color: Colors.black45),
                        ])
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            _listCryptoItem(
                              image:
                              'assets/jotaro.gif',
                              myCrypto: '3.529020 BTC',
                              myBalance: '\$ 5.441',
                              myProfit: '\$19.153',
                              precent: 4.32,
                            ),
                            _listCryptoItem(
                              image:
                              'assets/ronnie.gif',
                              myCrypto: '12.83789 ETH',
                              myBalance: '\$ 401',
                              myProfit: '\$4.822',
                              precent: 3.97,
                            ),
                            _listCryptoItem(
                              image:
                              'assets/xmen.gif',
                              myCrypto: '1911.6374736 XRP',
                              myBalance: '\$ 0.45',
                              myProfit: '\$859',
                              precent: -13.55,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
                    child: Text(
                      'Market statistics',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
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
                                "19,00€",
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
                                "21,00€",
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
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
                    child: Text(
                      'DAO NFTs',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 330,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) {
                        final actor = actors[i];
                        return Container(
                          margin: EdgeInsets.only(
                              left: i == 0 ? 20 : 0,
                              right: i == actors.length - 1 ? 20 : 8),
                          child: ActorComponent(
                            actor: actor,
                            onPressed: () {
                              Config.navigate(
                                  context,
                                  DtailJotaro(
                                    actor: actor,
                                  )
                              );

                            },


                          ),



                        );

                      },
                      itemCount: actors.length,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
                    child: Text(
                      'Art NFTs',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 135,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      itemBuilder: (context, i) {
                        final order = hot5[i];
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
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
                    child: Text(
                      'Celebs NFTs',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 135,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      itemBuilder: (context, i) {
                        final order = hot3[i];
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
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
                    child: Text(
                      'Sport NFTs',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 135,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      itemBuilder: (context, i) {
                        final order = hot4[i];
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
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
                    child: Text(
                      'Video games',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 135,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      itemBuilder: (context, i) {
                        final order = hot2[i];
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
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
                    child: Text(
                      'Memes',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
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
                  SizedBox(height: 14),
                  SizedBox(

                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      width: double.infinity,
                      height: 166,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("C:\Users\User\StudioProjects\biscuitpayment_app\lib\Pages\images\NFT-1.jpg"),
                        ),
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(

                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFF961F).withOpacity(0.7),
                              kPrimaryColor.withOpacity(0.7),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Image.asset('assets/8898.png',
                                    width:300,height:166,
                                    fit: BoxFit.cover),
                              ),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(color: Colors.white),
                                    children: [
                                      TextSpan(
                                        text: "Get Discount of \n",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      TextSpan(
                                        text: "30% \n",
                                        style: TextStyle(
                                          fontSize: 43,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                        "on special offering of ZTE NFT",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
                    child: Text(
                      'Recent purchases',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
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
                  SizedBox(height: 14),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _listCryptoItem(
    {image,
      double precent = 0,
      myCrypto,
      myBalance,
      myProfit}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            '$image',
            width: 50,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '$myCrypto',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  '$myProfit',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$myBalance',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                precent >= 0 ? '+ $precent %' : '$precent %',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: precent >= 0 ? Colors.green : Colors.pink,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}


Widget card(
    {double width = double.infinity, double padding = 20, child}) {
  return Container(
    width: width,
    padding: EdgeInsets.all(padding),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: child,
  );
}

class order {
  String? title;
  int? qte;
  String? asset;
  order({this.asset, this.qte, this.title});
}