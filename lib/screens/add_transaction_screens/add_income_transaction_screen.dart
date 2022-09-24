import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddIncomeTransactionScreen extends StatefulWidget {
  const AddIncomeTransactionScreen({Key? key}) : super(key: key);

  @override
  State<AddIncomeTransactionScreen> createState() =>
      _AddIncomeTransactionScreenState();
}

class _AddIncomeTransactionScreenState
    extends State<AddIncomeTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('income')),
    );
  }
}
