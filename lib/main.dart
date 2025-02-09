import 'package:flutter/material.dart';
import 'package:demoproject/Homework2/air_quality.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: AirQuality());
  }
}
