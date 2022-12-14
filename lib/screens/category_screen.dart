import 'package:flutter/material.dart';
import 'package:karcha_book_provider/routes/routes.dart';
import 'package:karcha_book_provider/utils/tabs.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List tabScreens = [Routes.ADD_INCOME_CATEGORY, Routes.ADD_EXPENSE_CATEGORY];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: Tabs().tabsList.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Add Category'),
            bottom: TabBar(tabs: [...Tabs().tabsList]),
          ),
          body: TabBarView(children: [...tabScreens]),
        ));
  }
}
