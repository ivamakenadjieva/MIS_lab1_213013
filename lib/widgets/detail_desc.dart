import 'package:flutter/material.dart';

class DetailDescription extends StatelessWidget {
  final String description;

  const DetailDescription({required this.description, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Colors.grey[700],
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}