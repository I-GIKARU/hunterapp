import 'package:flutter/material.dart';
import 'properties.dart'; // Import the screen where you want to display all properties

// ignore: use_key_in_widget_constructors
class CTAButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 10.0),
        ElevatedButton(
          onPressed: () {
            // Navigate to the screen where all properties are displayed
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AllPropertiesScreen()),
            );
          },
          child: const Text('View All Properties'),
        ),
      ],
    );
  }
}
