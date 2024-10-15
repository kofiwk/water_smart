import 'package:flutter/material.dart';
import 'package:water_smart/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'WaterSmart Ghana',
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
