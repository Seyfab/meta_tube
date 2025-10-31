import 'package:flutter/material.dart';

class AppTheme {
  static const Color dark = Color(0xFF1E1E1E);
  static const Color medium = Color.fromARGB(255, 12, 92, 138);
  static const Color accent = Color.fromARGB(255, 61, 111, 131);
  static const Color light = Color.fromARGB(255, 255, 255, 255);

  static const TextStyle inputStyle = TextStyle(
    color: light,
    fontSize: 20,
  );

  static const TextStyle hintText = TextStyle(
    color: medium,
  );

  static const TextStyle counter = TextStyle(
    color: medium,
    fontSize: 14,
  );
 }