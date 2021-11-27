import 'package:biscuitpayment_app/model/chat.dart';
import 'package:biscuitpayment_app/src/widget/slidable_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:biscuitpayment_app/data.dart';
import 'package:biscuitpayment_app/model/chat.dart';
import 'package:biscuitpayment_app/utils.dart';

import '../data.dart';
import '../utils.dart';

class GetStartedPage extends StatelessWidget {
  final String title = 'MARKETPLACE';


  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.pink),
    home: MainPage(title: title),
  );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Chat> items = List.of(Data.chats);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body: ListView.separated(
      itemCount: items.length,
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (context, index) {
        final item = items[index];

        return SlidableWidget(
          key: UniqueKey(),
          child: buildListTile(item),
          onDismissed: (action) =>
              dismissSlidableItem(context, index, action),
        );
      },
    ),
  );

  void dismissSlidableItem(
      BuildContext context, int index, SlidableAction action) {
    setState(() {
      items.removeAt(index);
    });

    switch (action) {
      case SlidableAction.archive:
        Utils.showSnackBar(context, 'Chat has been archived');
        break;
      case SlidableAction.share:
        Utils.showSnackBar(context, 'Chat has been shared');
        break;
      case SlidableAction.more:
        Utils.showSnackBar(context, 'Selected more');
        break;
      case SlidableAction.delete:
        Utils.showSnackBar(context, 'Chat has been deleted');
        break;
    }
  }

  Widget buildListTile(Chat item) => ListTile(
    contentPadding: EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 16,
    ),
    leading: CircleAvatar(
      radius: 28,
      backgroundImage: NetworkImage(item.urlAvatar),
    ),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.username,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(item.message)
      ],
    ),
    onTap: () {},
  );
}