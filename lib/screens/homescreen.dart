// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hunter/contents/featuredproperties.dart';
import 'package:hunter/contents/categories.dart';
import 'package:hunter/contents/latestlistings.dart';
import 'package:hunter/contents/ctabuttons.dart';
import 'package:hunter/contents/navigationlogic.dart';
import 'package:hunter/screens/filterscreen.dart';
import 'package:hunter/screens/aboutusscreen.dart';

import 'chatscreen.dart'; // Import the AboutUsScreen

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: const Text('House Hunter'),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                      child: const Text('Search for properties',),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return FilterScreen(); // Display the filter screen as a modal bottom sheet
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 20.0),
                    // Your existing content
                    FeaturedProperties(),
                    const SizedBox(height: 20.0),
                    Categories(),
                    const SizedBox(height: 10.0),
                    LatestListings(),
                    const SizedBox(height: 20.0),
                    CTAButtons(),
                    const SizedBox(height: 0.0),
                    ElevatedButton(
                      child: const Text('More Info'),
                      onPressed: () {
                        // Navigate to About Us screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutUsScreen()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Liked',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: 'Profile',
                ),
              ],
              onTap: (int index) {
                onBottomNavigationTapped(index, context);
              },
            ),
          ),
          Positioned(
            bottom: 120.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {// Navigate to the chat screen
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen()));
                // Add functionality for the chat button here
                // For example, you can navigate to a chat screen
              },
              child: const Icon(Icons.chat),
            ),
          ),
        ],
      ),
    );
  }
}

