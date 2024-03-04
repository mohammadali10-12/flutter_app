import 'package:flutter/material.dart';
import 'package:helloworld/models/catlog.dart';
import '../widget/drawer.dart';
import '../models/catlog.dart';
import '../widget/item_widget.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: CatalogModel.items[index]);
          }),
      drawer: MyDrawer(),
    );
  }
}
