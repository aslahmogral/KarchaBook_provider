// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryTypeAdapter extends TypeAdapter<CategoryType> {
  @override
  final int typeId = 1;

  @override
  CategoryType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return CategoryType.INCOME;
      case 1:
        return CategoryType.EXPENSE;
      default:
        return CategoryType.INCOME;
    }
  }

  @override
  void write(BinaryWriter writer, CategoryType obj) {
    switch (obj) {
      case CategoryType.INCOME:
        writer.writeByte(0);
        break;
      case CategoryType.EXPENSE:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
