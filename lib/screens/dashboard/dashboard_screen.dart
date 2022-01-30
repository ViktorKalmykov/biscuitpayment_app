import 'package:auto_size_text/auto_size_text.dart';
import 'package:biscuitpayment_app/Pages/favorite.dart';
import 'package:biscuitpayment_app/responsive.dart';
import 'package:biscuitpayment_app/screens/dashboard/components/graph%20chart/Storage_chart2.dart';
import 'package:biscuitpayment_app/screens/dashboard/components/graph%20chart/chart%202.dart';
import 'package:biscuitpayment_app/screens/dashboard/components/graph%20chart/my_files%202.dart';
import 'package:biscuitpayment_app/screens/dashboard/components/my_fields.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/New_files2.dart';
import 'components/New_files3.dart';
import 'components/graph chart/bar_chart_widget.dart';
import 'components/graph chart/bar_data.dart';
import 'components/graph chart/bar_titles.dart';
import 'components/header.dart';

import 'components/recent_files.dart';
import 'components/storage_details.dart';

List matches2 = [
  Match(isSelected: true, text: "Equity long/short"),
  Match(isSelected: false, text: "Smart alpha"),
  Match(isSelected: false, text: "Smart beta"),
  Match(isSelected: false, text: "Index arbitrage"),
  Match(isSelected: false, text: "Other"),
];

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 35,

              child: ListView.builder(
                  itemCount: matches2.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, i) {
                    return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(
                          horizontal: 10),
                      padding:
                      EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      decoration: BoxDecoration(
                          color: Color(0xff363753),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: AutoSizeText(
                        matches2[i].text,
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  }),
            ),
            SizedBox(height: defaultPadding),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles2(),
                      StarageDetails2(),
                      MyFiles(),
                      SizedBox(height: defaultPadding),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Sorted by higher %',
                                style: TextStyle(color: Colors.white70)),
                            Row(children: [
                              Text(
                                '24H',
                                style: TextStyle(color: Colors.white70),
                              ),
                              Icon(Icons.keyboard_arrow_down, color: Colors.white70),
                            ])
                          ],
                        ),
                      ),
                      LongME(),
                      SizedBox(height: defaultPadding),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Sorted by higher %',
                                style: TextStyle(color: Colors.white70)),
                            Row(children: [
                              Text(
                                '24H',
                                style: TextStyle(color: Colors.white70),
                              ),
                              Icon(Icons.keyboard_arrow_down, color: Colors.white70),
                            ])
                          ],
                        ),
                      ),
                      ShortME(),
                      SizedBox(height: defaultPadding),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Sorted by higher %',
                                style: TextStyle(color: Colors.white70)),
                            Row(children: [
                              Text(
                                '24H',
                                style: TextStyle(color: Colors.white70),
                              ),
                              Icon(Icons.keyboard_arrow_down, color: Colors.white70),
                            ])
                          ],
                        ),
                      ),
                      RecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context)) StarageDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                // On Mobile means if the screen is less than 850 we dont want to show it
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StarageDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


class BarChartWidget extends StatelessWidget {
  final double barWidth = 22;

  @override
  Widget build(BuildContext context) => BarChart(
    BarChartData(
      alignment: BarChartAlignment.center,
      maxY: 20,
      minY: -20,
      groupsSpace: 12,
      barTouchData: BarTouchData(enabled: true),
      titlesData: FlTitlesData(
        topTitles: BarTitles.getTopBottomTitles(),
        bottomTitles: BarTitles.getTopBottomTitles(),
        leftTitles: BarTitles.getSideTitles(),
        rightTitles: BarTitles.getSideTitles(),
      ),
      gridData: FlGridData(
        checkToShowHorizontalLine: (value) => value % BarData.interval == 0,
        getDrawingHorizontalLine: (value) {
          if (value == 0) {
            return FlLine(
              color: const Color(0xff363753),
              strokeWidth: 3,
            );
          } else {
            return FlLine(
              color: const Color(0xff2a2747),
              strokeWidth: 0.8,
            );
          }
        },
      ),
      barGroups: BarData.barData
          .map(
            (data) => BarChartGroupData(
          x: data.id,
          barRods: [
            BarChartRodData(
              y: data.y,
              width: barWidth,
              colors: [data.color],
              borderRadius: data.y > 0
                  ? BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
              )
                  : BorderRadius.only(
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
            ),
          ],
        ),
      )
          .toList(),
    ),
  );
}