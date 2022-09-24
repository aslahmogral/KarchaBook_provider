import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AddEditCategoryList<T> extends StatefulWidget {
  final Box<T> box;

  const AddEditCategoryList({Key? key, required this.box}) : super(key: key);

  @override
  State<AddEditCategoryList<T>> createState() => _AddEditCategoryListState<T>();
}

class _AddEditCategoryListState<T> extends State<AddEditCategoryList<T>> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: widget.box.listenable(),
        builder: (BuildContext ctx, Box<T> box, Widget? child) {
          List categoryItemsList = box.values.toList();

          List keys = box.keys.toList();

          return ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text(categoryItemsList[index].name),
                  trailing: GestureDetector(
                      onTap: () {
                        print(keys[index]);
                        box.delete(keys[index]);
                      },
                      child: Icon(Icons.delete)),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
              itemCount: categoryItemsList.length);
        });
  }
}
