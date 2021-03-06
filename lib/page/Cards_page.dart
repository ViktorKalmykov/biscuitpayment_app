import 'package:biscuitpayment_app/config.dart';
import 'package:biscuitpayment_app/data/drawer_items.dart';
import 'package:biscuitpayment_app/model/drawer_item.dart';
import 'package:biscuitpayment_app/page/deployment_page.dart';
import 'package:biscuitpayment_app/page/get_started_page.dart';
import 'package:biscuitpayment_app/page/performance_page.dart';
import 'package:biscuitpayment_app/src/common.dart';
import 'package:flutter/material.dart';
import 'package:biscuitpayment_app/src/widget/cards.dart';
import 'package:provider/provider.dart';
import '../../drawer.dart';
import '../common.dart';
import 'package:biscuitpayment_app/page/resources_page.dart';
import 'package:biscuitpayment_app/page/samples_page.dart';
import 'package:biscuitpayment_app/page/testing_page.dart';
import 'package:biscuitpayment_app/provider/navigation_provider.dart';
import 'package:biscuitpayment_app/config.dart';


class Cards extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Cards> {
  double money = 50.00;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
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
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(60),bottomLeft: Radius.circular(60),)
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
                              TextSpan(text: "\nTotal Balance\n", style: TextStyle(color: white.withOpacity(0.5), fontSize: 18)),
                              TextSpan(text: "\$ ", style: TextStyle(color: white.withOpacity(0.5), fontSize: 30)),
                              TextSpan(text: "1,234.00 \n", style: TextStyle(color: white, fontSize: 36)),
                              TextSpan(text: " \nYour cards", style: TextStyle(color: white.withOpacity(0.5), fontSize: 18)),
                            ]
                        )),
                      ),
                      IconButton(icon: Icon(Icons.more_vert, color: white,size: 40,), onPressed: (){})
                    ],
                  ),

                  SizedBox(height: 20,),
                  Text("Courses by Peter", style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      fontFamily: 'product'
                  ),),
                  SizedBox(height: 10,),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          courseWidget(Config.assets.kid1, "Young \nLearners", "GRADE 0-1", Color(0xffdbf0f1), Color(0xff39888e)),
                          courseWidget(Config.assets.kid2, "Creative \nBloomers", "GRADE 0-2", Color(0xffffe9a7), Color(0xff4d4d4d)),
                          courseWidget(Config.assets.kid3, "Early \nAchievers", "GRADE 0-3", Color(0xfff1e7f5), Color(0xff4a155f))
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 5,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CreditCard(color: "2a1214", number: 9290, image: "mastercard.png", valid: "VALID 10/22",),
                        CreditCard(color: "000068", number: 1298, image: "visa .png", valid: "VALID 07/24",),
                      ],
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
                          child: CircleAvatar(child: Icon(Icons.add), radius: 25,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(backgroundImage: AssetImage("images/p2.jpg"),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(backgroundImage: AssetImage("images/p3.jpg"),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(backgroundImage: AssetImage('images/p1.jpg'),),
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
                    onTap: (){
                      _settingModalBottomSheet(context);
                    },
                    leading: const CircleAvatar(backgroundImage: AssetImage('images/p2.jpg'),),
                    title: RichText(text: TextSpan(children: [
                      TextSpan(text: 'Jason Martin\n'),
                      TextSpan(text: 'Money Sent - Today 9AM\n', style: TextStyle(fontSize: 14, color: grey))
                    ], style: TextStyle(color: Colors.black, fontSize: 18))),
                    trailing: Text("- \$430", style: TextStyle(fontSize: 20),),
                  ),

                  ListTile(
                    onTap: (){
                      _settingModalBottomSheet(context);
                    },
                    leading: CircleAvatar(backgroundImage: AssetImage("images/p2.jpg"),),
                    title: RichText(text: TextSpan(children: [
                      TextSpan(text: 'Jason Martin\n'),
                      TextSpan(text: 'Money received - Today 12PM\n', style: TextStyle(fontSize: 14, color: grey))
                    ], style: TextStyle(color: Colors.black, fontSize: 18))),
                    trailing: Text("+ \$220", style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _settingModalBottomSheet(context){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc){
          return Container(
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
            ),
            child: new Wrap(
              children: <Widget>[

                Row(
                  mainAxisAlignment: MainAxisAlignment.center
                  ,children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(radius: 25,backgroundImage: AssetImage("images/p2.jpg"),),
                  ),
                ],),
                Container(
                  alignment: Alignment.center,
                  child: Text("Jason Martin", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),),
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
                          onTap: (){
                            if(money != 0){
                              money -= 10;
                            }
                          },
                          child: CircleAvatar(child: Icon(Icons.remove, color: Colors.white,), radius: 20, backgroundColor: Colors.grey,)),
                    ),
                    SizedBox(width: 10,),
                    Text("$money", style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold ),),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: InkWell(
                          onTap: (){
                            setState(() {
                              money += 10;
                            });
                          },
                          child: CircleAvatar(child: Icon(Icons.add, color: Colors.white,), radius: 20, backgroundColor: Colors.grey,)),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: InkWell(
                    onTap: (){
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
                          child: Text("Send Money", style: TextStyle(fontSize: 22, color: Colors.white),),
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
                    image: AssetImage('asset/images/$img.png'),
                    fit: BoxFit.contain
                )
            ),
          )
        ],
      ),
    );
  }
}