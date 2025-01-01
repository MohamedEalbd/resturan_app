import 'package:flutter/material.dart';
import 'package:restaurant/my_app.dart';


showSnackBar(String content) {
  ScaffoldMessenger.of(navigatorKey.currentContext!)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(
          content,
          textAlign: TextAlign.center,
          style: const TextStyle(),
        ),
      ),
    );
}
