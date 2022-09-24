import 'package:flutter/material.dart';

class ExpenseStatisticsScreen extends StatefulWidget {
  const ExpenseStatisticsScreen({Key? key}) : super(key: key);

  @override
  State<ExpenseStatisticsScreen> createState() =>
      _ExpenseStatisticsScreenState();
}

class _ExpenseStatisticsScreenState
    extends State<ExpenseStatisticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('expense statistics')),
    );
  }
}