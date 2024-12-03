import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:water_smart/firebase_options.dart';
import 'package:water_smart/services/auth/auth_gate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'WaterSmart Ghana',
      home: AuthGate(),
      debugShowCheckedModeBanner: false,
    );
  }
}
