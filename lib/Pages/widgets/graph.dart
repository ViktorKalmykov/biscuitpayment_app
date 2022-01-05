import 'package:flutter/material.dart';

class GraphData implements Comparable<GraphData> {
  String label;
  int value;

  GraphData(this.label, this.value);

  @override
  int compareTo(GraphData other) {
    return this.value.compareTo(other.value);
  }
}

List<GraphData> dayData = [
  GraphData("12am", 100),
  GraphData("3am", 80),
  GraphData("6am", 70),
  GraphData("9am", 120),
  GraphData("12pm", 90),
  GraphData("3pm", 160),
  GraphData("6pm", 90),
  GraphData("9pm", 50),
  GraphData("12pm", 80)
];

List<GraphData> weekData = [
  GraphData("Sunday", 2000),
  GraphData("Monday", 1800),
  GraphData("Tuesday", 1900),
  GraphData("Wednesday", 1300),
  GraphData("Thursday", 1500),
  GraphData("Friday", 3500),
  GraphData("Saturday", 4000)
];

List<GraphData> monthData = [
  GraphData("01", 2000),
  GraphData("02", 500),
  GraphData("03", 320),
  GraphData("04", 490),
  GraphData("05", 450),
  GraphData("06", 600),
  GraphData("07", 650),
  GraphData("08", 700),
  GraphData("09", 670),
  GraphData("10", 350),
  GraphData("11", 420),
  GraphData("12", 450),
  GraphData("13", 800),
  GraphData("14", 300),
  GraphData("15", 900),
  GraphData("16", 750),
  GraphData("17", 650),
  GraphData("18", 200),
  GraphData("19", 950),
  GraphData("20", 1600),
  GraphData("21", 1800),
  GraphData("22", 1100),
  GraphData("23", 1000),
  GraphData("24", 950),
  GraphData("25", 500),
  GraphData("26", 600),
  GraphData("27", 650),
  GraphData("28", 360),
  GraphData("29", 100),
  GraphData("30", 300),
];


class GraphFinal extends StatelessWidget {
  final double height;
  final List<GraphData> values;

  GraphFinal(this.values, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _buildBars(values),
      ),
    );
  }


  _buildBars(List<GraphData> values) {
    List<ThisGraphBar> _bars = [];
    GraphData _maxGraphData = values.reduce(
            (current, next) => (next.compareTo(current) >= 1) ? next : current);
    values.forEach((graphData) {
      double percentage = graphData.value / _maxGraphData.value;
      _bars.add(ThisGraphBar(height, percentage));
    });

    return _bars;
  }
}

class ThisGraphBar extends StatefulWidget {
  final double height, percentage;


  ThisGraphBar(this.height, this.percentage);

  @override
  _GraphBarState createState() => _GraphBarState();
}

class _GraphBarState extends State<ThisGraphBar> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        child: Container(
          height: widget.height,
        ),
    );
  }
}

class BarPainter extends CustomPainter {
  final double percentage;

  BarPainter(this.percentage);

  @override
  void paint(Canvas canvas, Size size) {
    Paint greyPaint = Paint()
      ..color = Colors.grey
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    Offset topPoint = Offset(0, 0);
    Offset bottomPoint = Offset(0, (size.height + 20));
    Offset centerPoint = Offset(0, (size.height + 20) / 2);

    canvas.drawLine(topPoint, bottomPoint, greyPaint);

    Paint filledPaint = Paint()
      ..shader = LinearGradient(
          colors: [Colors.pink.shade500, Colors.blue.shade500],
          begin: Alignment.topCenter
      ).createShader(Rect.fromPoints(topPoint, bottomPoint))
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    double filledHeight = percentage * size.height;
    double filledHalfHeight = filledHeight / 2;

    canvas.drawLine(
        centerPoint, Offset(0, centerPoint.dy - filledHalfHeight), filledPaint);
    canvas.drawLine(
        centerPoint, Offset(0, centerPoint.dy + filledHalfHeight), filledPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate){
    return true;
  }
}