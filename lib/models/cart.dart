import 'package:helloworld/models/catlog.dart';

class CartModel {
  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;

  late CatalogModel _catalog;

  final List<int> _itemIds = [];
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatlog) {
    assert(newCatlog != null);
    _catalog = newCatlog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // add item in cart
  void add(item) {
    _itemIds.add(item.id);
  }

  // remove item
  void remove(item) {
    _itemIds.remove(item.id);
  }
}
