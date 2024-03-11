import 'package:helloworld/models/cart.dart';
import 'package:helloworld/models/catlog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  CatalogModel? catalog;
  CartModel? cart;

  MyStore() {
    final catalog = CatalogModel();
    final cart = CartModel();

    cart.catalog = catalog;
  }
}
