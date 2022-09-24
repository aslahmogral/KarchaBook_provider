import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:karcha_book_provider/models/category_type.dart';
import 'package:karcha_book_provider/models/expense_category.dart';
import 'package:karcha_book_provider/services/boxes.dart';
import 'package:karcha_book_provider/utils/constants.dart';
import 'package:karcha_book_provider/widgets/add_edit_category_list.dart';

class AddExpenseCategoryScreen extends StatefulWidget {
  const AddExpenseCategoryScreen({Key? key}) : super(key: key);

  @override
  State<AddExpenseCategoryScreen> createState() =>
      _AddExpenseCategoryScreenState();
}

class _AddExpenseCategoryScreenState extends State<AddExpenseCategoryScreen> {
  final expenseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddEditCategoryList<expenseCategory>(
          box: Hive.box<expenseCategory>('expenseCategoryBox')),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text(Constants.EXPENSE),
                      content: TextField(
                        controller: expenseController,
                      ),
                      actions: [
                        TextButton(
                            onPressed: () async {
                              var box = Boxes.expenseBoxInstance();

                              await box.add(expenseCategory(
                                  expenseController.text,
                                  CategoryType.EXPENSE));
                              print(box.values.toList());

                              Navigator.pop(context);
                            },
                            child: Text('submit'))
                      ],
                    ));
          }),
    );
  }
}
