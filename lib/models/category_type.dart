import 'package:hive/hive.dart';
part 'category_type.g.dart';


@HiveType(typeId: 1)
enum CategoryType{
  @HiveField(0)
  INCOME,
  @HiveField(1)
  EXPENSE
}