// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, use_super_parameters

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Property {
  final String imageUrl;

  Property({
    required this.imageUrl,
  });

  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(
      imageUrl: json['property_image'] as String,
    );
  }
}

class AllPropertiesScreen extends StatefulWidget {
  @override
  _AllPropertiesScreenState createState() => _AllPropertiesScreenState();
}

class _AllPropertiesScreenState extends State<AllPropertiesScreen> {
  List<Property> propertyList = [];
  bool isLoading = true;
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    fetchProperties();
  }

  Future<void> fetchProperties() async {
    try {
      final response = await http.get(Uri.parse('https://api.farmunity.fusionafricatech.co.ke/products/get-products'));
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body) as Map<String, dynamic>;
        if (jsonData.containsKey('properties') && jsonData['properties'] is List) {
          List<Property> properties = (jsonData['properties'] as List)
              .map((item) => Property.fromJson(item as Map<String, dynamic>))
              .toList();
          setState(() {
            propertyList = properties;
            isLoading = false;
          });
        } else {
          setState(() {
            errorMessage = 'Invalid format for properties data';
            isLoading = false;
          });
        }
      } else {
        setState(() {
          errorMessage = 'Failed to load properties';
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = e.toString();
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (errorMessage.isNotEmpty) {
      return Center(child: Text(errorMessage));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('All Properties'),
      ),
      body: ListView.builder(
        itemCount: propertyList.length,
        itemBuilder: (BuildContext context, int index) {
          return PropertyCard(
            imageUrl: propertyList[index].imageUrl,
          );
        },
      ),
    );
  }
}

class PropertyCard extends StatelessWidget {
  final String imageUrl;

  const PropertyCard({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
