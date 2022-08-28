import 'package:flutter/material.dart';

mixin Helpers {
   void ShowSnakBar({required BuildContext context , required String message, error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: error ? Colors.red : Colors.greenAccent,
      ),
    );
  }
}
