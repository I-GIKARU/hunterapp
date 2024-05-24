// chat_screen.dart

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: const Center(
        child: Text('Chat functionality goes here'),
      ),
    );
  }
}
