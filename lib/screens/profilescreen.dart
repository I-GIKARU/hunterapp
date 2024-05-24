import 'package:flutter/material.dart';
import 'package:hunter/screens/loginscreen.dart'; // Import your LoginScreen here

// ignore: use_key_in_widget_constructors
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CircleAvatar(
              radius: 180,
              backgroundImage: AssetImage('assets/images/avatarman.png'),
            ),
            const SizedBox(height: 20),
            const Text(
              'user name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'username.@gmail.com',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ListTile(
              title: const Text('Account Settings', style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                // Navigate to account settings screen
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Activity History', style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                // Navigate to activity history screen
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Subscription Information', style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                // Navigate to subscription information screen
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Sign Out', style: TextStyle(color: Colors.red)),
              onTap: () {
                // Navigate to login screen and remove all routes below it
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                      (route) => false,
                );
                // Handle sign out if necessary
              },
            ),
          ],
        ),
      ),
    );
  }
}
