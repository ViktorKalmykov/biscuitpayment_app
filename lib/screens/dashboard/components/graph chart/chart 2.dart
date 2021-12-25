import 'package:biscuitpayment_app/screens/dashboard/components/graph%20chart/bar_chart_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../chart.dart';

class HigherChart extends StatelessWidget {
  const HigherChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        children: [HigherBarChartWidget()
        ],
      ),
    );
  }
}