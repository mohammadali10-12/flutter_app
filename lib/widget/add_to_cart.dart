import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/cart.dart';
import '../models/catlog.dart';

class AddToCart extends StatefulWidget {
  final Item catalog;

  const AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<AddToCart> createState() => AddToCartState();
}

class AddToCartState extends State<AddToCart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog) ?? false;
    return ElevatedButton(
            onPressed: () {
              if (!isInCart) {
                isInCart = isInCart.toggle();
                final _catalog = CatalogModel();
                _cart.catalog = _catalog;
                _cart.add(widget.catalog);
                setState(() {});
              }
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff848481)),
                shape: MaterialStateProperty.all(StadiumBorder())),
            child: isInCart ? Icon(Icons.done) : Icon(Icons.add_shopping_cart))
        .wh(70, 40);
  }
}
