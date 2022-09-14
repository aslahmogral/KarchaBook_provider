import 'package:flutter/material.dart';

class AddExpenseTransactionScreen extends StatefulWidget {
  const AddExpenseTransactionScreen({Key? key}) : super(key: key);

  @override
  State<AddExpenseTransactionScreen> createState() =>
      _AddExpenseTransactionScreenState();
}

class _AddExpenseTransactionScreenState
    extends State<AddExpenseTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('expense')),
    );
  }
}
