import 'package:hive/hive.dart';
import 'package:karcha_book_provider/models/category_type.dart';
part 'expense_category.g.dart';


@HiveType(typeId: 3)
class expenseCategory {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final CategoryType categoryType ;

  expenseCategory(this.name, this.categoryType);
}