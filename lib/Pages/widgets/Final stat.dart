
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Asset stats.dart';
import 'Price header.dart';

class AssetDetails extends StatefulWidget {
  final Asset asset;

  AssetDetails({required this.asset});

  @override
  _AssetDetailsState createState() => _AssetDetailsState();
}

class _AssetDetailsState extends State<AssetDetails> {
  @override
  Widget build(BuildContext context) {
    final color = CryptoColors.parse(widget.asset.symbol);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.asset.symbol.toUpperCase()),
        elevation: 0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Price(
                      percentChange: widget.asset.percentChange24h,
                      // color: Colors.white,
                    ),
                  ),

                  Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Divider(
                        // color: Colors.black45,
                      )),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: AssetStats(
                      asset: widget.asset,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Text(
                      widget.asset.description ?? "",
                      style: TextStyle(
                        // color: Colors.black54,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Container(
                    height: 60,
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