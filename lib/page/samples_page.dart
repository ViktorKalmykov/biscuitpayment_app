import 'package:biscuitpayment_app/Grading%20model/screens/quizz_screen.dart';
import 'package:biscuitpayment_app/Grading%20model/ui/shared/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:biscuitpayment_app/Grading%20model/screens/quizz_screen.dart';
import 'package:biscuitpayment_app/Grading%20model/ui/shared/color.dart';

class SamplesPage extends StatefulWidget {
  const SamplesPage({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<SamplesPage> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(
        "MY GRADE",
      ),
      backgroundColor: Colors.pink,
      centerTitle: true,
    ),

    backgroundColor: AppColor.pripmaryColor,
    body: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 48.0,
        horizontal: 12.0,
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Biscuit Grade",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: RawMaterialButton(
                  onPressed: () {
                    //Navigating the the Quizz Screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizzScreen(),
                        ));
                  },
                  shape: const StadiumBorder(),
                  fillColor: AppColor.secondaryColor,
                  child: const Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                    child: Text(
                      "Let's Start",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Center(
              child: Text(
                "Watch, how we evaluate Your Grade",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

