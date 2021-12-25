
import 'package:biscuitpayment_app/responsive.dart';
import 'package:flutter/material.dart';
import 'package:biscuitpayment_app/models/MyFiles.dart';
import '../../../../constants.dart';
import '../file_info_card.dart';


class MyFiles2 extends StatelessWidget {
  const MyFiles2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Portfolio Performance",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical:
                  defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                ),
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Add"),
            ),
          ],
        ),
      ],
    );
  }
}
