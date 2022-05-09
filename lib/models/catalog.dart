class Item {
  final String id;
  final String name;
  final String desc;
  final String color;
  final num price;
  final String imgurl;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.color,
      required this.price,
      required this.imgurl});
}

final products = [
  Item(
      id: "1",
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      color: "#33505a",
      price: 999,
      imgurl:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-blue-hero?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1604021661000")
];
