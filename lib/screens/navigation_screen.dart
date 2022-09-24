import 'package:flutter/material.dart';
import 'package:karcha_book_provider/routes/routes.dart';
import 'package:karcha_book_provider/utils/constants.dart';

class NavigationButtonScreen extends StatefulWidget {
  const NavigationButtonScreen({Key? key}) : super(key: key);

  @override
  State<NavigationButtonScreen> createState() => NavigationButtonScreenState();
}

class NavigationButtonScreenState extends State<NavigationButtonScreen> {
  int currentIndex = 0;

  final screens = [
    Routes.TRANSACTION_ROUTE,
    Routes.STATISTICS_ROUTE,
    Routes.CATEGORY_ROUTE,
    Routes.SETTING_ROUTE,
  ];

  List bottomNavigationBarItem = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: Constants.TRANSACTION,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.bar_chart),
      label: Constants.STATISTICS,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.category),
      label: Constants.CATEGORY,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: Constants.SETTINGS,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => setState(() {
                currentIndex = index;
              }),
          items: [...bottomNavigationBarItem]),
    );
  }
}
