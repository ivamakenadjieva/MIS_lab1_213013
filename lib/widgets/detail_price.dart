import 'package:flutter/material.dart';

class DetailPrice extends StatelessWidget {
  final double price;

  const DetailPrice({required this.price, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Text(
        '\$${price.toStringAsFixed(2)}',
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
        fontWeight: FontWeight.bold,
        color: Colors.green,
        ),
      ),
    );
  }
}