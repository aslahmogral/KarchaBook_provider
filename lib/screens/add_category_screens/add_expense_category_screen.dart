import 'package:flutter/material.dart';

class AddExpenseCategoryScreen extends StatefulWidget {
  const AddExpenseCategoryScreen({Key? key}) : super(key: key);

  @override
  State<AddExpenseCategoryScreen> createState() =>
      _AddExpenseCategoryScreenState();
}

class _AddExpenseCategoryScreenState
    extends State<AddExpenseCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('expense category')),
    );
  }
}
