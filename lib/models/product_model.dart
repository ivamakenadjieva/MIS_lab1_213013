class Product {
  int id;
  String name;
  String img;
  String desc;
  double price;

  Product({required this.id, required this.name, required this.img, required this.desc, required this.price,});

  Product.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        img = data['img'],
        desc = data['desc'],
        price = data['price'];
  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'img': img, 'desc':desc,'price' : price};
}