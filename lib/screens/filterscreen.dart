// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class FilterCriteria {
  final String location;
  final double minPrice;
  final double maxPrice;
  final String category;

  FilterCriteria({
    required this.location,
    required this.minPrice,
    required this.maxPrice,
    required this.category,
  });
}

class FilterScreen extends StatefulWidget {
  @override
  FilterScreenState createState() => FilterScreenState();
}

class FilterScreenState extends State<FilterScreen> {
  String _location = '';
  double _minPrice = 0.0;
  double _maxPrice = 1000000.0;
  String _category = '';

  List<String> categoryOptions = [
    '', // Placeholder for 'Select category'
    'Studio Apartment',
    'One Bedroom',
    'Two Bedrooms',
    'Three or More Bedrooms',
  ];

  void _resetFilters() {
    setState(() {
      _location = '';
      _minPrice = 0.0;
      _maxPrice = 1000000.0;
      _category = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - kToolbarHeight - MediaQuery.of(context).padding.top,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Location'),
              TextField(
                onChanged: (value) {
                  setState(() {
                    _location = value;
                  });
                },
                decoration: const InputDecoration(
                  hintText: 'Enter location',
                ),
              ),
              const SizedBox(height: 20),
              const Text('Price Range'),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          _minPrice = double.tryParse(value) ?? 0.0;
                        });
                      },
                      decoration: const InputDecoration(
                        hintText: 'Min',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          _maxPrice = double.tryParse(value) ?? 1000000.0;
                        });
                      },
                      decoration: const InputDecoration(
                        hintText: 'Max',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text('Category'),
              DropdownButtonFormField<String>(
                value: _category.isEmpty ? null : _category,
                items: categoryOptions.map((String category) {
                  return DropdownMenuItem<String>(
                    value: category.isEmpty ? null : category,
                    child: Text(category.isEmpty ? 'Select category' : category),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _category = newValue ?? '';
                  });
                },
                decoration: const InputDecoration(
                  hintText: 'Select category',
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: _resetFilters,
              child: const Text('Clear Filters'),
            ),
            ElevatedButton(
              onPressed: () {
                if (_minPrice <= _maxPrice) {
                  Navigator.pop(
                    context,
                    FilterCriteria(
                      location: _location,
                      minPrice: _minPrice,
                      maxPrice: _maxPrice,
                      category: _category,
                    ),
                  );
                } else {
                  // Show an error if minPrice is greater than maxPrice
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Invalid Price Range'),
                        content: const Text('The minimum price cannot exceed the maximum price.'),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: const Text('Apply Filters'),
            ),
          ],
        ),
      ),
    );
  }
}
