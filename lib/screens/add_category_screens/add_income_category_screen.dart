import 'package:flutter/material.dart';

class AddIncomeCategoryScreen extends StatefulWidget {
  const AddIncomeCategoryScreen({Key? key}) : super(key: key);

  @override
  State<AddIncomeCategoryScreen> createState() =>
      _AddIncomeCategoryScreenState();
}

class _AddIncomeCategoryScreenState
    extends State<AddIncomeCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('income category')),
    );
  }
}
