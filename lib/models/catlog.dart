class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

class CatalogModel {
  static final items = [
    Item(
        id: '1',
        name: 'iphon 12pro',
        desc: 'apple iphone 12th generation',
        price: 60000,
        color: 'black',
        image: 'url')
  ];
}
