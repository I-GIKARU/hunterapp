// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class FeaturedProperties extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Featured Properties',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                PropertyCard(imageUrl: 'http://res.cloudinary.com/djsn84htr/image/upload/v1710473302/test-one/cubkhvjso7k8uc6vynrg.jpg'),
                PropertyCard(imageUrl: 'http://res.cloudinary.com/djsn84htr/image/upload/v1710473302/test-one/cubkhvjso7k8uc6vynrg.jpg'),
                PropertyCard(imageUrl: 'http://res.cloudinary.com/djsn84htr/image/upload/v1710473302/test-one/cubkhvjso7k8uc6vynrg.jpg'),
                PropertyCard(imageUrl: 'http://res.cloudinary.com/djsn84htr/image/upload/v1710473302/test-one/cubkhvjso7k8uc6vynrg.jpg'),
                PropertyCard(imageUrl: 'http://res.cloudinary.com/djsn84htr/image/upload/v1710473302/test-one/cubkhvjso7k8uc6vynrg.jpg'),
                PropertyCard(imageUrl: 'http://res.cloudinary.com/djsn84htr/image/upload/v1710473302/test-one/cubkhvjso7k8uc6vynrg.jpg'),
                PropertyCard(imageUrl: 'http://res.cloudinary.com/djsn84htr/image/upload/v1710473302/test-one/cubkhvjso7k8uc6vynrg.jpg'),
                PropertyCard(imageUrl: 'http://res.cloudinary.com/djsn84htr/image/upload/v1710473302/test-one/cubkhvjso7k8uc6vynrg.jpg'),
                PropertyCard(imageUrl: 'http://res.cloudinary.com/djsn84htr/image/upload/v1710473302/test-one/cubkhvjso7k8uc6vynrg.jpg'),
                // Add more PropertyCard widgets for additional images
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PropertyCard extends StatelessWidget {
  final String imageUrl;

  const PropertyCard({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      width: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
