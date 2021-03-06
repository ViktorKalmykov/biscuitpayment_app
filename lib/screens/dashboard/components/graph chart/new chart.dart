import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class LineCharts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const cutOffYValue = 0.0;
    const yearTextStyle =
    TextStyle(fontSize: 8, color: Colors.white);

    return SizedBox(
      height: 200,
      child: LineChart(
        LineChartData(
          lineTouchData: LineTouchData(enabled: false),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 1),
                FlSpot(1, 1),
                FlSpot(2, 3),
                FlSpot(3, 4),
                FlSpot(3, 5),
                FlSpot(4, 4)
              ],
              isCurved: true,
              barWidth: 1,
              colors: [
                Colors.blue,
              ],
              belowBarData: BarAreaData(
                show: true,
                colors: [Colors.pinkAccent.withOpacity(0.5)],
                cutOffY: cutOffYValue,
                applyCutOffY: true,
              ),
              aboveBarData: BarAreaData(
                show: true,
                colors: [Colors.lightGreen.withOpacity(0.5)],
                cutOffY: cutOffYValue,
                applyCutOffY: true,
              ),
              dotData: FlDotData(
                show: false,
              ),
            ),
          ],
          minY: 0,
          titlesData: FlTitlesData(
            bottomTitles: SideTitles(
                showTitles: true,
                reservedSize: 5,
                getTitles: (value) {
                  switch (value.toInt()) {
                    case 0:
                      return '2017';
                    case 1:
                      return '2018';
                    case 2:
                      return '2019';
                    case 3:
                      return '2020';
                    case 4:
                      return '2021';
                    default:
                      return '';
                  }
                }),
            leftTitles: SideTitles(
              showTitles: true,
              getTitles: (value) {
                return '\$ ${value + 150}';
              },
            ),
          ),
          axisTitleData: FlAxisTitleData(
              leftTitle: AxisTitle(showTitle: true, titleText: 'Value', margin: 10),
              bottomTitle: AxisTitle(
                  showTitle: true,
                  margin: 10,
                  titleText: 'Year',
                  textStyle: yearTextStyle,
                  textAlign: TextAlign.right)),
          gridData: FlGridData(
            show: true,
            checkToShowHorizontalLine: (double value) {
              return value == 1 || value == 2 || value == 3 || value == 4;
            },
          ),
        ),
      ),
    );
  }
}