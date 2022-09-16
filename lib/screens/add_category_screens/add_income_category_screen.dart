import 'package:flutter/material.dart';
import 'package:karcha_book_provider/utils/constants.dart';

class AddIncomeCategoryScreen extends StatefulWidget {
  const AddIncomeCategoryScreen({Key? key}) : super(key: key);

  @override
  State<AddIncomeCategoryScreen> createState() =>
      _AddIncomeCategoryScreenState();
}

class _AddIncomeCategoryScreenState
    extends State<AddIncomeCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(child: Text(Constants.ADD_INCOME_CATEGORY)),
      floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text(Constants.INCOME),
                          content: TextField(),
                          actions: [
                            TextButton(onPressed: () {}, child: Text('submit'))
                          ],
                        ));
              }),
    );
  }
}
