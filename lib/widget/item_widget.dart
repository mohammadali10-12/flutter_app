import 'package:flutter/material.dart';

import '../models/catlog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: GridTile(
          header: Container(
            child: Text(item.name,
                style: TextStyle(
                    color: Colors.deepPurple, fontWeight: FontWeight.bold)),
          ),
          child: Image.network(item.image),
          footer: Text(
            "\$${item.price}",
            textScaleFactor: 1.7,
            style: TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
