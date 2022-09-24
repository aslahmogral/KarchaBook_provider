import 'package:flutter/material.dart';
import 'package:karcha_book_provider/routes/routes.dart';
import 'package:karcha_book_provider/utils/tabs.dart';

class AddTransactionScreen extends StatefulWidget {
  const AddTransactionScreen({Key? key}) : super(key: key);

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  

  List tabScreens = [
    Routes.ADD_INCOME_TRANSACTION,
    Routes.ADD_EXPENSE_TRANSACTION
  ];
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: Tabs().tabsList.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Add transaction'),
          bottom: TabBar(tabs: [...Tabs().tabsList]),
        ),
        body: TabBarView(children:[...tabScreens] ),
      ));
}
