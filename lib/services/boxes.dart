import 'package:hive/hive.dart';
import 'package:karcha_book_provider/models/category.dart';
import 'package:karcha_book_provider/models/category_type.dart';

class Boxes {
  static Box menuBoxInstance() => Hive.box('CategoryBox');

  static Future<void> openHiveBoxes() async {
    await Hive.openBox('CategoryBox');
    await Hive.openBox('CategoryTypeBox');
  }

  static void registerHiveAdapter() {
    Hive.registerAdapter(CategoryTypeAdapter());
    Hive.registerAdapter(CategoryAdapter());
  }
}
