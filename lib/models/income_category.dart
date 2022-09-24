import 'package:hive/hive.dart';
import 'package:karcha_book_provider/models/category_type.dart';
part 'income_category.g.dart';


@HiveType(typeId: 2)
class IncomeCategory {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final CategoryType categoryType;

  IncomeCategory(this.name, this.categoryType);
}