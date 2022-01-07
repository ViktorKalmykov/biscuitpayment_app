import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class SportsDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: BezierChart(
                bezierChartScale: BezierChartScale.HOURLY,
                fromDate: DateTime(2021, 1, 1, 0, 0),
                toDate: DateTime(2021, 1, 1, 7, 30),
                series: lines,
                config: BezierChartConfig(
                    startYAxisFromNonZeroValue: false,
                    bubbleIndicatorColor: Colors.white.withOpacity(0.9),
                    footerHeight: 40,
                    xAxisTextStyle: TextStyle(
                        color: Style.backgroundColor2,
                        fontWeight: FontWeight.w600),
                    yAxisTextStyle: TextStyle(
                        color: Style.backgroundColor2,
                        fontWeight: FontWeight.w600),
                    verticalIndicatorStrokeWidth: 3.0,
                    verticalIndicatorColor: Style.primaryColor,
                    showVerticalIndicator: true,
                    verticalIndicatorFixedPosition: false,
                    displayYAxis: true,
                    stepsYAxis: 5000,
                    backgroundGradient: LinearGradient(
                      colors: [
                        Style.backgroundColor,
                        Style.backgroundColor.withOpacity(0.8),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    snap: true),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

