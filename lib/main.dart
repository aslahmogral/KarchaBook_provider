import 'package:flutter/material.dart';
import 'package:karcha_book_provider/screens/navigation_screen.dart';
import 'package:karcha_book_provider/services/boxes.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Boxes.registerHiveAdapter();
  await Boxes.openHiveBoxes();
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
