import 'package:flutter/material.dart';
import 'package:karcha_book_provider/screens/navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Karcha Book',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavigationButtonScreen(),
    );
  }
}
