import 'package:flutter/material.dart';
import 'package:helloworld/core/store.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/cart.dart';
import '../models/catlog.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;

  AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);
  // final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    final CartModel? _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart!.items.contains(catalog) ?? false;
    return ElevatedButton(
            onPressed: () {
              if (!isInCart) {
                isInCart = isInCart.toggle();
                final _catalog = CatalogModel();
                _cart.catalog = _catalog;
                _cart.add(catalog);
              }
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff848481)),
                shape: MaterialStateProperty.all(StadiumBorder())),
            child: isInCart ? Icon(Icons.done) : Icon(Icons.add_shopping_cart))
        .wh(10, 10);
  }
}
