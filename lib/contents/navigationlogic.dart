import 'package:flutter/material.dart';
import 'package:hunter/screens/profilescreen.dart';
import 'package:hunter/screens/savedscreen.dart';

void onBottomNavigationTapped(int index, BuildContext context) {
  if (index == 1) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SavedScreen()),
    );
  } else if (index == 2) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfileScreen()),
    );
  }
}
