
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:ui';

class AppColors {
  // Reds
  static Color guardsmanRed = Color(0xffb90000);

  // Blues
  static Color marinerBlue = Color(0xff296ecb);

  // Greys
  static Color romanceWhite = Color(0xfffefefe);
  static Color lilyWhite = Color(0xffeaeaea);

  // Blacks
  static Color deepBlack = Color(0xff000001);
  static Color bunkerBlack = Color(0xff111214);

  // Greens
  static Color pigmentGreen = Color(0xff00ba51);
}

class ChartColors {
  static Color bitcoin = Color(0xfff79319);
  static Color dash = Color(0xff3a74be);
  static Color dev = Color(0xff00b346);
  static Color doge = Color(0xfff8bf1a);
}

class ColorFormatter {
  static Color percentage(double value) =>
      value >= 0 ? AppColors.pigmentGreen : AppColors.guardsmanRed;
}

class CryptoColors {
  static Color btc = Color(0xfff7931b);
  static Color eth = Color(0xff627eea);
  static Color ada = Color(0xff656667);
  static Color usdt = Color(0xff27a17b);
  static Color bnb = Color(0xfff3ba2f);
  static Color xrp = Color(0xff656667);
  static Color sol = Color(0xff67f9a1);
  static Color dot = Color(0xffe60e7a);
  static Color usdc = Color(0xff3f73c4);
  static Color doge = Color(0xffc3a634);
  static Color uni = Color(0xffff0f7a);
  static Color link = Color(0xff295ada);
  static Color ltc = Color(0xffbfbbbb);
  static Color algo = Color(0xff656667);
  static Color bch = Color(0xff8dc351);
  static Color wbtc = Color(0xff656667);
  static Color atom = Color(0xff2e3148);
  static Color icp = Color(0xff656667);
  static Color fil = Color(0xff42c1ca);
  static Color matic = Color(0xff6f41d8);
  static Color trx = Color(0xffef0126);
  static Color xlm = Color(0xff656667);
  static Color etc = Color(0xff328332);
  static Color vet = Color(0xff14bdff);
  static Color dai = Color(0xfff4b731);
  static Color xtz = Color(0xffa6e007);

  static Map<String, Color> _map = {
    "btc": btc,
    "eth": eth,
    "ada": ada,
    "usdt": usdt,
    "bnb": bnb,
    "xrp": xrp,
    "sol": sol,
    "dot": dot,
    "usdc": usdc,
    "doge": doge,
    "uni": uni,
    "link": link,
    "ltc": ltc,
    "algo": algo,
    "bch": bch,
    "wbtc": wbtc,
    "atom": atom,
    "icp": icp,
    "fil": fil,
    "matic": matic,
    "trx": trx,
    "xlm": xlm,
    "etc": etc,
    "vet": vet,
    "dai": dai,
    "xtz": xtz,
  };

  static Color parse(String symbol) => _map.containsKey(symbol.toLowerCase())
      ? _map[symbol.toLowerCase()]!
      : AppColors.marinerBlue;
}


class Format {
  static final currency = NumberFormat.currency(locale: "en_US", symbol: "\$");
  static final compactCurrency =
  NumberFormat.compactCurrency(locale: "en_US", symbol: "\$");

  static final _percent =
  NumberFormat.decimalPercentPattern(locale: "en_US", decimalDigits: 2);

  static String toPercent(double value) => _percent.format(value / 100);

  static Amount toAmount(double value) {
    final split = currency.format(value).split(".");
    return Amount(whole: split[0], fractional: split[1]);
  }
}

class Amount {
  final String whole;
  final String fractional;

  Amount({required this.whole, required this.fractional});
}


class Price extends StatelessWidget {
  final String? title;
  final double percentChange;

  Price({
    required this.percentChange,
    this.title,
  });

  Widget _buildTitle(BuildContext context) {
    return title != null
        ? Container(
      padding: EdgeInsets.only(bottom: 4),
      child: Text(
        title!,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
          // color: Colors.black54,
        ),
      ),
    )
        : Container();
  }

  Widget _buildAmount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1!.color,
              fontWeight: FontWeight.w300,
              fontSize: 36,
            ),
          ),
          TextSpan(

            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1!.color,
              fontWeight: FontWeight.w300,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPercentageChange() {
    return Text(
      Format.toPercent(percentChange),
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: ColorFormatter.percentage(percentChange),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          _buildTitle(context),
          _buildAmount(context),
          Container(height: 4),
          _buildPercentageChange(),
        ],
      ),
    );
  }
}