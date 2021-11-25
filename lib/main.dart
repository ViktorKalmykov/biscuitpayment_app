import 'package:biscuitpayment_app/provider/navigation_provider.dart';
import 'package:biscuitpayment_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Navigation Drawer';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => NavigationProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biscuit',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: LoginScreen(),
    ),
  );
}



