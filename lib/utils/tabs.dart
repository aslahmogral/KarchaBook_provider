import 'package:flutter/material.dart';
import 'package:karcha_book_provider/utils/constants.dart';

class Tabs {
  List get tabsList => tabs;

  List tabs = [
    Tab(
      text: Constants.INCOME,
    ),
    Tab(
      text: Constants.EXPENSE,
    ),
  ];
}
