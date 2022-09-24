import 'package:hive/hive.dart';
import 'package:karcha_book_provider/models/category_type.dart';
import 'package:karcha_book_provider/models/expense_category.dart';
import 'package:karcha_book_provider/models/income_category.dart';

class Boxes {
  static Box IncomeBoxInstance() => Hive.box<IncomeCategory>('IncomeCategoryBox');
  static Box expenseBoxInstance() => Hive.box<expenseCategory>('ExpenseCategoryBox');

  static Future<void> openHiveBoxes() async {
    // await Hive.openBox<Category>('CategoryBox');
    await Hive.openBox<IncomeCategory>('IncomeCategoryBox');
    await Hive.openBox<expenseCategory>('expenseCategoryBox');
    // await Hive.openBox('CategoryTypeBox');
  }

  static void registerHiveAdapter() {
    Hive.registerAdapter(expenseCategoryAdapter());
    Hive.registerAdapter(IncomeCategoryAdapter());
    
    
    Hive.registerAdapter(CategoryTypeAdapter());
  }
}
