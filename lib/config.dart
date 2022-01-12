// ignore_for_file: prefer_const_constructors

import 'dart:js';



import 'package:biscuitpayment_app/screens/dashboard/components/header.dart';
import 'package:biscuitpayment_app/widgets/textField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dialogflow/flutter_dialogflow.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:biscuitpayment_app/widgets/textField.dart';

mixin MyStore {
}



class Config {
  static final assets = _Asset();
  static final colors = _Color();

  static void navigate(context, page, {bool animate = false}) {
    if (!animate) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => page,
        ),
      );
    } else {
      Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (c, a1, a2) => page,
          transitionsBuilder: (c, anim, a2, child) => ScaleTransition(
            scale: anim,
            child: child,
            alignment: Alignment.bottomLeft,
          ),
          transitionDuration: Duration(milliseconds: 200),
          reverseTransitionDuration: Duration(milliseconds: 200),
        ),
      );
    }
  }

  static appBar(double width) => PreferredSize(
    child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)
              .copyWith(right: 10),
          child: Row(
            children: [
              Image.asset(Config.assets.lg),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: CupertinoSearchTextField(
                    onChanged: (value) {CustomSearchDelegate();},
                  )),
              SizedBox(
                width: 5,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                    color: Config.colors.menuColor,
                  ))
            ],
          ),
        )),
    preferredSize: Size(width, 100),
  );
}

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.length < 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Search term must be longer than two letters.",
            ),
          )
        ],
      );
    }

    //Add the search term to the searchBloc.
    //The Bloc will then handle the searching and add the results to the searchResults stream.
    //This is the equivalent of submitting the search term to whatever search service you are using


    return Column(
      children: <Widget>[
        //Build the results based on the searchResults stream in the searchBloc
        StreamBuilder(

          builder: (context, AsyncSnapshot<List<Result>> snapshot) {
            if (!snapshot.hasData) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(child: CircularProgressIndicator()),
                ],
              );
            } else if (snapshot.data!.length == 0) {
              return Column(
                children: <Widget>[
                  Text(
                    "No Results Found.",
                  ),
                ],
              );
            } else {
              var results = snapshot.data;
              return ListView.builder(
                itemBuilder: (context, index) {
                  var result = results![index];
                  return ListTile(
                  );
                },
              );
            }
          },
        ),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // This method is called everytime the search term changes.
    // If you want to add search suggestions as the user enters their search term, this is the place to do that.
    return Column();
  }
}



class _Asset {
  final bg = "assets/images/Background.png";
  final lg = "assets/images/logo.png";
  final lgw = "assets/images/logo_white.png";
  final u1 = "assets/images/u1.png";
  final master = "assets/images/u2.png";
  final u2 = "assets/images/u3.png";
  final doll = "assets/images/u4.png";
  final bgSG = "assets/images/bg_sg.png";
  final search = "assets/images/search.png";
  final deer = "assets/images/Dear.jpeg";
  final meta = "assets/images/Meta.jpg";
  final kid1 = "assets/images/icon1.png";
  final kid2 = "assets/images/icon2.png";
  final kid3 = "assets/images/icon3.png";
  final gdup = "assets/8888.png";
  final kidkid = "assets/666.png";
  final kidkidd = "assets/9999.png";
  final tree = "assets/Tree.png";
  final city = "assets/city.png";
  final forrest = "assets/8787.png";
}

class _Color {
  final pink = Color(0xFFE84381);
  final pinkAccent = Color(0xFFFFCEE0);
  final greyColor = Color.fromRGBO(217, 217, 232, 0.33);
  // final c = Color(0xFFC4C4C4)
  final greyColor2 = Color(0xFF8B8BA1);
  final menuColor = Color(0xFF222020);
  final starColor = Color(0xFFF59C4C);
}

