import 'package:biscuitpayment_app/controllers/MenuController.dart';
import 'package:biscuitpayment_app/responsive.dart';
import 'package:biscuitpayment_app/screens/dashboard/components/graph%20chart/bar_chart_widget.dart';
import 'package:biscuitpayment_app/screens/dashboard/components/graph%20chart/bar_data.dart';
import 'package:biscuitpayment_app/screens/dashboard/components/graph%20chart/bar_titles.dart';
import 'package:biscuitpayment_app/screens/dashboard/dashboard_screen.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'components/side_menu.dart';



class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))

              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),

            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
