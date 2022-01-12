// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:biscuitpayment_app/config.dart';
import 'package:biscuitpayment_app/models/actor.dart';
import 'package:biscuitpayment_app/widgets/button.dart';

import 'NFT.dart';

class NFTComponent extends StatelessWidget {
  const NFTComponent({Key? key, required this.NFT, this.onPressed})
      : super(key: key);
  final NFT;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: 190,
      child: Stack(
        children: [
          Positioned(
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: SizedBox(
                  height: 270,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Hero(
                          tag: "${NFT.asset}&${NFT.title}",
                          child: Material(
                            color: Colors.transparent,
                            child: StatefulBuilder(
                              builder: (context, setState) {
                                return InkWell(
                                  onTap: () {
                                    NFT.fav = !NFT.fav;
                                    setState(() {});
                                  },
                                  child: Icon(
                                    NFT.fav
                                        ? MdiIcons.heart
                                        : FeatherIcons.heart,
                                    color: NFT.fav
                                        ? Config.colors.pink
                                        : Config.colors.menuColor,
                                  ),
                                );
                              },
                            ),
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                NFT.title!,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.5),
                              ),
                              Icon(
                                Icons.star,
                                color: Config.colors.starColor,
                                size: 20,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SGButton(
                            title: 'View detail',
                            onPressed: onPressed,
                            color: Config.colors.pink,
                            v: 8,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            left: 0,
            right: 0,
            bottom: 0,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
              tag: NFT.asset!,
              child: Material(
                color: Colors.transparent,
                child: Image.asset(
                  NFT.asset!,
                  height: 270,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
