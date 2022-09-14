import 'package:flutter/material.dart';

class IncomeStatisticsScreen extends StatefulWidget {
  const IncomeStatisticsScreen({Key? key}) : super(key: key);

  @override
  State<IncomeStatisticsScreen> createState() =>
      _IncomeStatisticsScreenState();
}

class _IncomeStatisticsScreenState
    extends State<IncomeStatisticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('income statistics')),
    );
  }
}