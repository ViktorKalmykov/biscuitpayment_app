// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bezier_chart/bezier_chart.dart';
import 'package:biscuitpayment_app/Pages/charts.dart';
import 'package:biscuitpayment_app/Pages/widgets/Asset%20stats.dart';
import 'package:biscuitpayment_app/Pages/widgets/Final%20stat.dart';
import 'package:biscuitpayment_app/Pages/widgets/Price%20header.dart';
import 'package:biscuitpayment_app/Pages/widgets/coin%20chart.dart';
import 'package:biscuitpayment_app/Pages/widgets/graph.dart';
import 'package:biscuitpayment_app/screens/dashboard/components/graph%20chart/new%20chart.dart';
import 'package:biscuitpayment_app/Pages/Chart%20for%20home%20page.dart';
import 'package:flutter/material.dart';
import 'package:biscuitpayment_app/config.dart';
import 'package:biscuitpayment_app/models/actor.dart';
import 'package:biscuitpayment_app/models/order.dart';
import 'package:biscuitpayment_app/pages/detail_actor.dart';
import 'package:biscuitpayment_app/widgets/actor_component.dart';
import 'package:biscuitpayment_app/widgets/order_component.dart';
import 'package:flutter_svg/svg.dart';

import 'order.dart';


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



class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  double get height => 500;

  double get percentage => 500;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final actors = [
      Actor(
          asset: Config.assets.u1,
          title: "Supervisor toy",
          price: 75.7,
          rating: 4),
      Actor(
          asset: Config.assets.master,
          title: "Front man toy",
          price: 60,
          rating: 3),
      Actor(
          asset: Config.assets.master,
          title: "Front man toy",
          price: 60,
          rating: 3),
      Actor(
          asset: Config.assets.master,
          title: "Front man toy",
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


    return Scaffold(
      body: Container(
    child: Stack(
    children: <Widget>[
      Container(
      height: 300,
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

            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 8.0),
              height: 25,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    courseWidget("NFT", Color(0xfff1e7f5), Color(0xff4a155f)),
                    courseWidget("Crypto", Color(0xffffe9a7), Color(0xff4d4d4d)),
                    courseWidget("Avatars", Color(0xfff1e7f5), Color(0xff4a155f)),
                    courseWidget("Rights of use", Color(0xfff1e7f5), Color(0xff4a155f))
                  ],
                ),
              ),
            ),
            SizedBox(height: 14),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
              child: Text(
                'Market dynamics',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),


            Container(height: 250,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: AssetPriceChart(lineColor: Colors.pink,),
            ),


            SizedBox(height: 14),
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
                  final order = orders[i];
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
                          child: SvgPicture.asset("C:\Users\User\StudioProjects\biscuitpayment_app\lib\Pages\images\NFT-1.jpg"),
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
                                  "at MacDonald's on your first order & Instant cashback",
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
                'NFT products',
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
                            DetailActor(
                              actor: actor,
                            ));
                      },
                    ),
                  );
                },
                itemCount: actors.length,
              ),
            ),
            SizedBox(height: 14),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
              child: Text(
                'Best on List',
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
                  final order = orders[i];
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
                'Avatars',
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
                            DetailActor(
                              actor: actor,
                            ));
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
                          child: SvgPicture.asset("C:\Users\User\StudioProjects\biscuitpayment_app\lib\Pages\images\NFT-1.jpg"),
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
                                  "at MacDonald's on your first order & Instant cashback",
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

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
              child: Text(
                'Recent orders',
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
                  final order = orders[i];
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
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    ],
    ),
      ),
    );
  }
}



Container courseWidget(String name, Color color, Color textColor)
{
  return Container(
    height: 100,
    margin: EdgeInsets.only(right: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: color
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(name, style: TextStyle(
                  color: textColor,
                  fontSize: 8,
                  fontWeight: FontWeight.w500
              ),),
            ],
          ),
        ),
        Container(
          height: 90,
          width: 70,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('Runner/assets/icons/.png'),
                  fit: BoxFit.contain
              )
          ),
        )
      ],
    ),
  );
}


