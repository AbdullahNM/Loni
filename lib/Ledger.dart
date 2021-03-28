import 'package:flutter/material.dart';
import 'package:loni_ledger/calender.dart';
import 'package:loni_ledger/content.dart';
import 'package:loni_ledger/drawer.dart';
import 'global.dart' as global;

class Ledger extends StatefulWidget {
  @override
  _LedgerState createState() => _LedgerState();
}

class _LedgerState extends State<Ledger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LONI'),
      ),
      drawer: NavDrawer(),
      body:
          /* ListView(
        scrollDirection: Axis.horizontal,
        children: [HomeCalendarPage(),],
      )*/
          Home(global.selectedIndex),
      endDrawer: HomeCalendarPage(),
    );
  }
}
