import 'package:flutter/material.dart';
import 'package:karcha_book_provider/routes/routes.dart';
import 'package:karcha_book_provider/utils/constants.dart';
import 'package:karcha_book_provider/utils/tabs.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({Key? key}) : super(key: key);

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

List tabScreens = [
  Routes.INCOME_STATISTICS,
  Routes.EXPENSE_STATISTICS
];

class _StatisticScreenState extends State<StatisticScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: Tabs().tabsList.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(Constants.STATISTICS),
          centerTitle: true,
          bottom: TabBar(tabs: [...Tabs().tabsList]),
        ),
        body: TabBarView(children: [...tabScreens])
      ));
}
