import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:karcha_book_provider/models/category_type.dart';
import 'package:karcha_book_provider/models/income_category.dart';
import 'package:karcha_book_provider/services/boxes.dart';
import 'package:karcha_book_provider/utils/constants.dart';
import 'package:karcha_book_provider/widgets/add_edit_category_list.dart';

class AddIncomeCategoryScreen extends StatefulWidget {
  const AddIncomeCategoryScreen({Key? key}) : super(key: key);

  @override
  State<AddIncomeCategoryScreen> createState() =>
      _AddIncomeCategoryScreenState();
}

class _AddIncomeCategoryScreenState extends State<AddIncomeCategoryScreen> {
  final incomeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddEditCategoryList<IncomeCategory>(
          box: Hive.box<IncomeCategory>('incomeCategoryBox')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text(Constants.INCOME),
                    content: TextField(
                      controller: incomeController,
                    ),
                    actions: [
                      TextButton(
                          onPressed: () async {
                            var box = Boxes.IncomeBoxInstance();

                            await box.add(IncomeCategory(
                                incomeController.text, CategoryType.INCOME));

                            Navigator.pop(context);
                          },
                          child: Text('submit'))
                    ],
                  ));
        },
      ),
    );
  }
}
