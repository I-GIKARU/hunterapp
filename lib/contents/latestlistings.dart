// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class LatestListings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            'Latest Listings',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 270.0,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PropertyCard(
                  imageUrl:
                  'http://res.cloudinary.com/djsn84htr/image/upload/v1710473302/test-one/cubkhvjso7k8uc6vynrg.jpg',
                  title: 'Beautiful Home',
                  price: '\$500,000',
                  description: 'A stunning property with amazing views.',
                ),
                PropertyCard(
                  imageUrl:
                  'http://res.cloudinary.com/djsn84htr/image/upload/v1710473302/test-one/cubkhvjso7k8uc6vynrg.jpg',
                  title: 'Cozy Apartment',
                  price: '\$200,000',
                  description: 'Perfect for individuals or small families.',
                ),
                PropertyCard(
                  imageUrl:
                  'http://res.cloudinary.com/djsn84htr/image/upload/v1710473302/test-one/cubkhvjso7k8uc6vynrg.jpg',
                  title: 'Cozy Apartment',
                  price: '\$200,000',
                  description: 'Perfect for individuals or small families.',
                ),
                PropertyCard(
                  imageUrl:
                  'http://res.cloudinary.com/djsn84htr/image/upload/v1710473302/test-one/cubkhvjso7k8uc6vynrg.jpg',
                  title: 'Cozy Apartment',
                  price: '\$200,000',
                  description: 'Perfect for individuals or small families.',
                ),
                // Add more PropertyCard widgets for additional listings
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PropertyCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String description;

  const PropertyCard({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      width: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Stack(
          children: [
            Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: 200.0,
              height: 220.0,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                ),
              ),
            ),
            Positioned(
              bottom: 16.0,
              left: 16.0,
              right: 16.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    'Price: $price',
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    description,
                    style: const TextStyle(color: Colors.white),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
