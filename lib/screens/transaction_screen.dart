import 'package:flutter/material.dart';
import 'package:karcha_book_provider/routes/routes.dart';
import 'package:karcha_book_provider/utils/constants.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.KARCHABOOK),
        centerTitle: true,
      ),
      body: Center(
        child: Text('transaction screen'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Routes.ADD_TRANSACTION_ROUTE));
      }
      ),
    );
  }
}
