import 'package:biscuitpayment_app/screens/dashboard/components/graph%20chart/bar_chart_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../chart.dart';

class FinalGraph extends StatelessWidget {
  const FinalGraph({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        children: [FinalGraph()
        ],
      ),
    );
  }
}