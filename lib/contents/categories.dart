// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CategoryItem(category: ' Apartments'),
        CategoryItem(category: 'One'),
        CategoryItem(category: 'Two'),
        CategoryItem(category: 'Three Bedrooms'),
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String category;

  const CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Text(
        category,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
