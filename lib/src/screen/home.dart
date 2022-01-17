import 'package:biscuitpayment_app/Pages/on_boarding.dart';
import 'package:biscuitpayment_app/Pages/widgets/detail_NFT.dart';
import 'package:biscuitpayment_app/data/drawer_items.dart';
import 'package:biscuitpayment_app/model/drawer_item.dart';
import 'package:biscuitpayment_app/models/order.dart';
import 'package:biscuitpayment_app/page/deployment_page.dart';
import 'package:biscuitpayment_app/page/get_started_page.dart';
import 'package:biscuitpayment_app/page/performance_page.dart';
import 'package:biscuitpayment_app/widgets/order_component.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:biscuitpayment_app/src/widget/cards.dart';
import 'package:provider/provider.dart';
import '../../config.dart';
import '../../drawer.dart';
import '../common.dart';
import 'package:biscuitpayment_app/page/resources_page.dart';
import 'package:biscuitpayment_app/page/samples_page.dart';
import 'package:biscuitpayment_app/page/testing_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:biscuitpayment_app/provider/navigation_provider.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final hot = [
  Order(asset: Config.assets.gdup, title: "Red Alert", qte: 5),
  Order(asset: Config.assets.kidkid, title: "Crypto Humster", qte: 2),
  Order(asset: Config.assets.kidkidd, title: "Crypto Ninja", qte: 5),
  Order(asset: Config.assets.gdup, title: "Red Kitty", qte: 5),
];

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double money = 50.00;
  int currentIndex = 0;

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink,
        title: Text("BISCUIT"),
        centerTitle: true,
      ),
      drawer: NavigationDrawerWidget(),
      backgroundColor: white,
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(text: TextSpan(
                            children: [
                              TextSpan(text: "\nTotal Balance\n",
                                  style: TextStyle(
                                      color: white.withOpacity(0.5),
                                      fontSize: 18)),
                              TextSpan(text: "\$ ",
                                  style: TextStyle(
                                      color: white.withOpacity(0.5),
                                      fontSize: 30)),
                              TextSpan(text: "1,234.00 \n",
                                  style: TextStyle(color: white, fontSize: 36)),
                              TextSpan(text: " \nYour cards",
                                  style: TextStyle(
                                      color: white.withOpacity(0.5),
                                      fontSize: 18)),
                            ]
                        )),
                      ),
                      IconButton(
                          icon: Icon(Icons.more_vert, color: white, size: 40,),
                          onPressed: () {})
                    ],
                  ),

                  SizedBox(height: 5,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CreditCard(color: "2a1214",
                          number: 9290,
                          image: "mastercard.png",
                          valid: "VALID 10/22",),
                        CreditCard(color: "000068",
                          number: 1298,
                          image: "visa .png",
                          valid: "VALID 07/24",),
                      ],
                    ),
                  ),

                  SizedBox(height: 5,),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Hot offerings"),
                      ),
                    ],
                  ),

                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.only(left: 8.0),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          courseWidget("icon1", "Young \nLearners", "GRADE 0-1", Color(0xffdbf0f1), Color(0xff39888e)),
                          courseWidget("icon2", "Creative \nBloomers", "GRADE 0-2", Color(0xffffe9a7), Color(0xff4d4d4d)),
                          courseWidget("icon3", "Early \nAchievers", "GRADE 0-3", Color(0xfff1e7f5), Color(0xff4a155f))
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 5,),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Send money"),
                      ),
                    ],
                  ),

                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(child: Icon(Icons.add),
                            radius: 25,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(backgroundImage: AssetImage(
                              "images/p2.jpg"),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(backgroundImage: AssetImage(
                              "images/p3.jpg"),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(backgroundImage: AssetImage(
                              'images/p1.jpg'),),
                        ),
                      ],
                    ),
                  ),



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
                      TextSpan(text: 'Jason Martin\n'),
                      TextSpan(
                          text: 'Money Sent - Today 9AM\n', style: TextStyle(
                          fontSize: 14, color: grey))
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
                      TextSpan(text: 'Jason Martin\n'),
                      TextSpan(text: 'Money received - Today 12PM\n',
                          style: TextStyle(fontSize: 14, color: grey))
                    ], style: TextStyle(color: Colors.black, fontSize: 18))),
                    trailing: Text("+ \$220", style: TextStyle(fontSize: 20),),
                  ),


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
                      _settingModalBottomSheet2(context);
                    },
                    leading: Icon(
                      Icons.remove_circle_outline, color: Colors.pink,),
                    title: RichText(text: TextSpan(children: [
                      TextSpan(text: 'Short Position'),
                      TextSpan(
                          text: 'Executed - Today 9AM\n', style: TextStyle(
                          fontSize: 12, color: Colors.white70))
                    ], style: TextStyle(color: Colors.black, fontSize: 18))),
                    trailing: Text("- \$430", style: TextStyle(fontSize: 20),),
                  ),

                  ListTile(
                    onTap: () {
                      _settingModalBottomSheet2(context);
                    },
                    leading: Icon(
                      Icons.add_circle_outline, color: Colors.pink,),
                    title: RichText(text: TextSpan(children: [
                      TextSpan(text: 'Long Position'),
                      TextSpan(text: 'Executed - Today 12PM\n',
                          style: TextStyle(fontSize: 12, color: Colors.white70))
                    ], style: TextStyle(color: Colors.black, fontSize: 18))),
                    trailing: Text("+ \$220", style: TextStyle(fontSize: 20),),
                  ),
                    ],
                  ),
            )],
              ),
            ),


      bottomNavigationBar: BubbleBottomBar(
        opacity: 0,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.add,
                  size: 30, color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.add,
                size: 30, color: Colors.black,
              ),
          title: Text("Home")),
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.attach_money,
                size: 30, color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.attach_money,
                size: 30, color: Colors.black,
              ),
              title: Text("Invest")),
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.group_add_rounded,
                size: 30, color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.group_add_rounded,
                size: 30, color: Colors.black,
              ),
              title: Text("Fundraise")),
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('robot.png')),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x5c000000),
                        offset: Offset(0, 1),
                        blurRadius: 5)
                  ],
                ),
              ),
              title: Text("Profile")),
        ],
      ),
    );
  }

  Container courseWidget(String img, String name, String grade, Color color, Color textColor)
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
                    fontSize: 17,
                    fontWeight: FontWeight.w500
                ),),
                Text(grade, style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11
                ),)
              ],
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

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            decoration: BoxDecoration(
                color: white,
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
                  child: Text("Jason Martin", style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text("Amount to send"),
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
                            setState(() {
                              money += 10;
                            });
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
                          child: Text("Send Money", style: TextStyle(
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
}

void _settingModalBottomSheet2(context) {
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


void selectItem(BuildContext context, int index) {
  final navigateTo = (page) => Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => page,
  ));

  Navigator.of(context).pop();}
