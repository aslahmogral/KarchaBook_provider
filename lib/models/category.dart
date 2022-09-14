import 'package:hive/hive.dart';
import 'package:karcha_book_provider/models/category_type.dart';
part 'category.g.dart';


@HiveType(typeId: 0)
class Category {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final CategoryType categoryType;

  Category(this.name, this.categoryType);
}
