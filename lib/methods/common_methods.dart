import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class CommonMethods {
  Future<void> checkConnectivity(BuildContext context) async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (!context.mounted) return; // Check if context is still valid
    for (var result in connectivityResult) {
      if (result != ConnectivityResult.mobile && result != ConnectivityResult.wifi) {
        displaySnackBar('No internet! check your internet connection', context);
      }
    }
  }

  void displaySnackBar(String messageText, BuildContext context) {
    if (ScaffoldMessenger.of(context).mounted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(messageText),
      ));
    }
  }

  void checkIfNetworkIsAvailable(BuildContext context) {
    checkConnectivity(context);
    if (!context.mounted) return;

  }
}
