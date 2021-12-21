import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

import 'catalog.dart';
import 'store.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class MyRoutes {
  static String loginRoute = "/login";
  static String signupRoute = "/signup";
  static String homeRoute = "/home";
  static String homeDetailsRoute = "/detail";
  static String cartRoute = "/cart";
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
    await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    (VxState.store as MyStore).items = CatalogModel.items;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final MyStore store = VxState.store;
    return Scaffold(
        backgroundColor: context.canvasColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              store.navigator.routeManager.push(Uri.parse(MyRoutes.cartRoute)),
          backgroundColor: context.theme.buttonColor,
          child: Icon(
            CupertinoIcons.cart,
            color: Colors.white,
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CupertinoSearchTextField(
                  onChanged: (value) {
                    SearchMutation(value);
                  },
                ),
                  CircularProgressIndicator().centered().expand(),
              ],
            ),
          ),
        ));
  }
}

