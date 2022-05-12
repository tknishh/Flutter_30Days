import 'package:flutter/material.dart';
import 'package:spogger/models/catalog.dart';
import 'package:spogger/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class home_page extends StatefulWidget {
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  final int days = 30;
  final String name = "Tedd";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(4, ((index) => CatalogModel.items[0]));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Spogger",
        ),
      ),
      body: ListView.builder(
        itemCount: dummylist.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummylist[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
