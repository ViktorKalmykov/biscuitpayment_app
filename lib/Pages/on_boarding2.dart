import 'dart:js';
import 'dart:ui';

import 'package:biscuitpayment_app/Pages/widgets/detail_fight.dart';
import 'package:flutter/material.dart';
import 'package:biscuitpayment_app/config.dart';
import 'package:biscuitpayment_app/pages/home_page.dart';
import 'package:biscuitpayment_app/widgets/button.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(

      body: Container(
        width: width,
        decoration: BoxDecoration(
        ),

        child:
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sorted by higher %',
                              style: TextStyle(color: Colors.black)),
                          Row(children: [
                            Text(
                              '24H',
                              style: TextStyle(color: Colors.black),
                            ),
                            Icon(Icons.keyboard_arrow_down, color: Colors.black),
                          ])
                        ],
                      ),
                    ),
                    _listCryptoItem(
                      image:
                      'assets/ora.gif',
                      myCrypto: '3.529020 BTC',
                      myBalance: '\$ 5.441',
                      myProfit: '\$19.153',
                      precent: 4.32,
                    ),
                    _listCryptoItem(
                      image:
                      'assets/muda.gif',
                      myCrypto: '3.529020 BTC',
                      myBalance: '\$ 5.441',
                      myProfit: '\$19.153',
                      precent: 4.32,
                    ),
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
                      myCrypto: '3.529020 BTC',
                      myBalance: '\$ 5.441',
                      myProfit: '\$19.153',
                      precent: 4.32,
                    ),
                    _listCryptoItem(
                      image:
                      'assets/xmen.gif',
                      myCrypto: '3.529020 BTC',
                      myBalance: '\$ 5.441',
                      myProfit: '\$19.153',
                      precent: -13.55,
                    ),
                  ],
                ),
              ),
            ),
          ),

    );
  }
}

bool value = false;
Widget _listCryptoItem(
    {image,
      double precent = 0,
      myCrypto,
      myBalance,
      myProfit,
    Checkbox}) {
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
          SizedBox(
            height: 10,
          ),
          SGButton(
            title: 'Use',
            onPressed: () => Dtailfight(),
          )
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
        gradient: LinearGradient(
          colors: [
            Colors.blueGrey,
            Colors.pink,
            Colors.grey,
            Colors.white54,
            Colors.white60,
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(10)),
    child: child,
  );
}