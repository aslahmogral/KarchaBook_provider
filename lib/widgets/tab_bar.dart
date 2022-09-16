import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  final List tabList;
  final List tabScreenList;
  final String appbarTitle;
  const TabBarWidget(
      {Key? key, required this.tabList, required this.tabScreenList, required this.appbarTitle})
      : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.tabList.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.appbarTitle),
            bottom: TabBar(tabs: [...widget.tabList]),
          ),
          body: TabBarView(children: [...widget.tabScreenList]),
          // floatingActionButton: FloatingActionButton(
          //     child: const Icon(Icons.add),
          //     onPressed: () {
          //       showDialog(
          //           context: context,
          //           builder: (context) => AlertDialog(
          //                 title: Text('income'),
          //                 content: TextField(),
          //                 actions: [
          //                   TextButton(onPressed: () {}, child: Text('submit'))
          //                 ],
          //               ));
          //     }),
        ));
  }
}
