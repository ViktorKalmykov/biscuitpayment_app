import 'package:biscuitpayment_app/screens/dashboard/components/graph%20chart/Linechart.dart';
import 'package:biscuitpayment_app/screens/dashboard/components/graph%20chart/chart%202.dart';
import 'package:biscuitpayment_app/screens/dashboard/components/graph%20chart/new%20chart.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../chart.dart';
import '../storage_info_card.dart';
import 'line chart designed.dart';


class StarageDetails2 extends StatelessWidget {
  const StarageDetails2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: defaultPadding),
          LineCharts(),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "YTD Performance",
            amountOfFiles: "+138%",
            numOfFiles: 250,
          ),
        ],
      ),
    );
  }
}
