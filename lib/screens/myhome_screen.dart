import 'package:financial_control/screens/myday_screen.dart';
import 'package:financial_control/screens/mymonth_screen.dart';
import 'package:financial_control/screens/myweek_screen.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatelessWidget {
  final int tabIndex = 0;
  final List<Tab> myTab = [
    Tab(text: 'day'),
    Tab(text: 'week'),
    Tab(text: 'month'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: tabIndex,
      length: myTab.length,
      child: Scaffold(
        floatingActionButton: buildFloatingActionButton(),
        appBar: AppBar(
          title: Text('financial controler'),
          bottom: TabBar(
            onTap: (i) {
              // tabIndex = i;
            },
            indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
            tabs: myTab,
          ),
        ),
        body: TabBarView(
          children: [
            MyDayScreen(),
            MyWeekScreen(),
            MyMounthScreen(),
          ],
        ),
      ),
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: null,
      child: Icon(Icons.attach_money, size: 30),
    );
  }
}
