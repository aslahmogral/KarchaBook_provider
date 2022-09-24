// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_category.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class expenseCategoryAdapter extends TypeAdapter<expenseCategory> {
  @override
  final int typeId = 3;

  @override
  expenseCategory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return expenseCategory(
      fields[0] as String,
      fields[1] as CategoryType,
    );
  }

  @override
  void write(BinaryWriter writer, expenseCategory obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.categoryType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is expenseCategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
