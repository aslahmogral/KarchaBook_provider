import 'package:flutter/material.dart';
import 'package:karcha_book_provider/utils/constants.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.SETTINGS),
        centerTitle: true,
      ),
      body: Center(child: Text('setting screen'),),
    );
  }
}