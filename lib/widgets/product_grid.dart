import 'package:flutter/material.dart';
import 'package:new_flutter_project/models/product_model.dart';
import 'package:new_flutter_project/widgets/product_card.dart';

class ProductGrid extends StatefulWidget {
  final List<Product> product;
  const ProductGrid({super.key, required this.product});
  @override
  _ProductGridState createState() => _ProductGridState();
}
class _ProductGridState extends State<ProductGrid> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.product.map((product) =>
          ProductCard(id: product.id, name: product.name, image: product.img, desc: product.desc, price: product.price),
      ).toList(),
    );
  }
}